module;

#include <string>
#include <cstdint>

#include "asio.hpp"
#include "result.hpp"

export module shared.eng.socket;

export namespace shared::eng::socket {
    enum class SendErr {
        UNKNOWN
    };

    using SendResult = res::Result<res::None, SendErr>;

    class UDPSocket {
    public:
        UDPSocket()
            : io_context(), socket(io_context), ok(true)
        {
            try {
                socket.open(asio::ip::udp::v4());
            }
            catch (...) {
                ok = false;
            }
        }

        [[nodiscard]]
        SendResult send_to(std::string target_address, std::string message, uint16_t port_num) {
            try {
                asio::ip::udp::endpoint target(asio::ip::make_address(std::move(target_address)), port_num);
                socket.send_to(asio::buffer(std::move(message)), target);
            }
            catch (...) {
                return res::Err(SendErr::UNKNOWN);
            }

            return res::Ok<res::None>();
        }

        [[nodiscard]]
        bool is_ok() const {
            return ok;
        }
    private:
        asio::io_context io_context;
        asio::ip::udp::socket socket;
        bool ok;
    };
}