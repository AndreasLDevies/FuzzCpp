#include <iostream>
#include <string>

std::string foo(long int x, int y, char b);

void printHelloWorld() {
    std::cout << "Hello World!" << std::endl;
}

int main(void) {
    printHelloWorld();
    auto s = foo(55, 10, 'a');
    std::cout << s << std::endl;
}

//returns a string that contains the character b repeated x times but no more than y times
std::string foo(long int x, int y, char b) {
    std::string s;
    for (int i = 0; i < x && i < y; i++) {
        s += b;
    }
    return s;
}


