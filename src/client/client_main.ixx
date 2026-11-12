module;

#include <iostream>

export module client;

import raylib;

export namespace client {
    void main() {
        std::cout << "running client";
    }
}