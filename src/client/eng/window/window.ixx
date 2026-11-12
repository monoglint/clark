module;

#include <cstdint>

export module client.eng.window;

import raylib;

export namespace client::eng::window {
    class Window {
    public:
        Window(uint32_t size_x, uint32_t size_y)
            : window(size_x, size_y)
        {

        }

        [[nodiscard]]
        bool should_close() const {
            return window.ShouldClose();
        }

        void set_size(uint32_t size_x, uint32_t size_y) {
            window.SetSize(size_x, size_y);
        }

        void run() {
            while (!should_close()) {
                window.BeginDrawing();
                window.ClearBackground(raylib::Colors::WHITE);
                
                window.EndDrawing();
            }
        }
    private:
        raylib::Window window;
    };
}