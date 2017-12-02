/**
 * config.h
 *
 * Copyright (C) 2017 by Sunil
 */

#ifndef CONFIG_H
#define CONFIG_H

#include <string>

using std::string;

namespace config {

class Config {
 public:
  Config();
  virtual ~Config();

  string getName();
}; // class Config

}  // namespace config


#endif /* CONFIG_H */
