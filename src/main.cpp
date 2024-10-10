#include <iostream>
#include "..\include\calculator.h"

int main() {
    int a = 5;
    int b = 3;

    std::cout << "Add: " << add(a, b) << std::endl;
    std::cout << "Subtract: " << subtract(a, b) << std::endl;

    return 0;
}