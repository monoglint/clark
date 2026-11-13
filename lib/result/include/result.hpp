#pragma once

#include <variant>
#include <utility>

namespace res {
    using None = std::monostate;

    template <typename T>
    class Ok {
    public:
        explicit Ok(T t)
            : val(std::move(t))
        {}
        T val;
    };

    template <>
    class Ok<None> {
    public:
        explicit Ok() {}
        None val;
    };

    template <typename E>
    class Err {
    public:
        explicit Err(E e)
            : val(std::move(e))
        {}
        E val;
    };

    template <>
    class Err<None> {
    public:
        explicit Err() {}
        None val;
    };

    template <typename T, typename E>
    class Result {
    public:
        Result(Ok<T> ok)
            : impl(std::move(ok)) {}

        Result(Err<E> err)
            : impl(std::move(err)) {}

        [[nodiscard]]
        bool is_ok() const {
            return std::holds_alternative<Ok<T>>(impl);
        }

        T& get_value() {
            return std::get<Ok<T>>(impl).val;
        }

        E& get_err() {
            return std::get<Err<E>>(impl).val;
        }

        const T& get_value() const {
            return std::get<Ok<T>>(impl).val;
        }

        const E& get_err() const {
            return std::get<Err<E>>(impl).val;
        }
    private:
        std::variant<Ok<T>, Err<E>> impl;
    };
}
