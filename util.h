#pragma once

#include <iostream>
#include <string>

using namespace std;

namespace util {
  // console printing functions
  class console {
  private:
    string moniker;
  public:
    console(string name);
    void print(string msg);
  };
} // namespace
