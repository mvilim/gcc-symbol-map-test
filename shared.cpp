#include <shared.h>

std::shared_ptr<Obj> shared_func() { return std::make_shared<Obj>(1); }
