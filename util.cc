/**
 * util.cc
 *
 * Copyright (c) 2017 Sunil
 */
#include "./util.h"

#include <iostream>

using std::cout;
using std::endl;

namespace util {

console::console(string name) : moniker(name) {}

void console::print(string msg) { cout << moniker << " -- " << msg << endl; }

}  // namespace util
