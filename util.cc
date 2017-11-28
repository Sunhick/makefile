/**
 * util.cc
 *
 * Copyright (c) 2017 Sunil
 */
#include "./util.h"

using util;

console::console(string name) : moniker(name) { }

void console::print(string msg) {
  cout << moniker << " -- " << msg << endl;
}

