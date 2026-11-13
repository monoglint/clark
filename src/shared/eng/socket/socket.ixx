module;

#include <stdexcept>
#include <string>
#include <cstdint>

#include "asio.hpp"
#include "result.hpp"

export module shared.eng.socket;

export namespace shared::eng::socket {
    enum class SendErr {
        UNKNOWN,
        SOCKET_CLOSED,
        INVALID_ADDRESS
    };

    using SendResult = res::Result<res::None, SendErr>;

    struct ReceiveResult {
        
    };

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
        SendResult send_to(std::string target_address, const std::string& message, uint16_t port_num) {
            if (ok == false)
                return res::Err(SendErr::SOCKET_CLOSED);
            
            try {
                asio::ip::udp::endpoint target(asio::ip::make_address(std::move(target_address)), port_num);
                socket.send_to(asio::buffer(message), target);
            }
            catch (const asio::system_error&) {
                return res::Err(SendErr::UNKNOWN);
            }
            catch (const std::invalid_argument&) {
                return res::Err(SendErr::INVALID_ADDRESS);
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