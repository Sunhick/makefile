/**
 * config.cc - config object for makefile project
 *
 * Copyright (C) 2017 by Sunil
 */

#include "config.h"

namespace config {

Config::Config() {
  cf = &cfg;
  config_init(cf);
  if (!config_read_file(cf, "config.cfg")) {
    config_destroy(cf);
    throw "unable to read config.";
  }
}

Config::~Config() {}

string Config::getName() {
  const char *base = NULL;
  config_lookup_string(cf, "author", &base);
  return string(base);
}

}  // namespace config
