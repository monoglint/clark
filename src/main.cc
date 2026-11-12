#include <iostream>
#include <string>

import client;
import server;

constexpr std::string SERVER_ARG = "--server";

int main(int argc, char* argv[]) {
    const bool running_server = argc > 1 && std::string(argv[1]) == SERVER_ARG;
    
    std::cout << running_server << '\n';

    if (running_server)
        server::main();
    else
        client::main();

    return 0;
}