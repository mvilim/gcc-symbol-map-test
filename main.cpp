#include <shared.h>
#include <iostream>
#include <memory>

int main() {
    std::shared_ptr<Obj> test = std::make_shared<Obj>(0);
    std::cout << shared_func()->i << std::endl;
    return 0;
}
