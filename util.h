/**
 * util.h
 *
 * Copyright (c) 2017 Sunil
 */
#pragma once

#include <string>

using std::string;

namespace util {

// console printing functions
class console {
 private:
  string moniker;

 public:
  explicit console(string name);
  void print(string msg);
};

}  // namespace util
