#include "util.h"

using namespace util;

console::console(string name) : moniker(name) { }

void console::print(string msg) {
  cout << moniker << " -- " << msg << endl;
}

