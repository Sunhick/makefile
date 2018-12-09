/**
 * config.cc - config object for makefile project
 *
 * Copyright (C) 2017 by Sunil
 */

#include "config.h"

#include <iostream>

using namespace std;

namespace config {

Config::Config() {
  cf = &cfg;
  config_init(cf);
  if (!config_read_file(cf, "config/config.cfg")) {
    config_destroy(cf);
    throw "unable to read config.";
  }
}

Config::~Config() {}

string Config::getName() {
  const char *base;
  try {
    config_lookup_string(cf, "author", &base);
  } catch (...) {
    cout << "Error in reading author" << endl;
  }

  return string(base);
}

}  // namespace config
