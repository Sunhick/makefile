/**
 * graphics/graphics.h
 *
 * Copyright (c) 2017 Sunil
 */
#pragma once

extern void graphics_init();

// Without specifying header as dependency changing
// the value will not trigger recompilation with make.
// Make uses time stamp to find if recompilation is
// required or not.
static unsigned int vga_address = 0xBC00D;

