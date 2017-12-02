/**
 * config.h
 *
 * Copyright (C) 2017 by Sunil
 */

#ifndef CONFIG_H
#define CONFIG_H

#include <string>
#include <libconfig.h>

using std::string

namespace config {

class Config {
 private:
  config_t cfg;
  
 public:
  Config();
  virtual ~Config();

  string getName();
}; // class Config

}  // namespace config


#endif /* CONFIG_H */
