#include <memory>

struct Obj {
    int i;

    Obj(int i) : i(i){};
};

std::shared_ptr<Obj> shared_func();
