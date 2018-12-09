/**
 * graphics/graphics.cc
 *
 * Copyright (c) 2017 Sunil
 */
#include "./graphics.h"

#include <iostream>

using std::cout;
using std::hex;
using std::endl;

void graphics_init() {
  cout << "graphics init addr: " << hex << vga_address << endl;
}
