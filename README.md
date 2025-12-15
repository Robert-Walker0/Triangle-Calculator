# Triangle Calculator

## A simple CLI made for determining if three side lengths form a triangle

This project was originally developed in C++ during my college freshman years. It has been rewritten using Lua now.

If you're looking for a simple, clean starting point for creating a triangle calculator, want to learn how to validate basic triangles, or want to compare implementations between C++ and Lua, this project will be of great help to you.

* Lua and C++ versions are available in `v2.0.2-stable` release.
* `v2.1.0-stable` contains properly written Lua tests for input and triangles.

## Technologies

* C++14
* Lua 5.1+
* Luaunit
* Github Actions (Continuous Integration)

Note: C++ was dropped for the higher version of this program (`v2.1.0-stable`)

## Features

* Command-line interface application
* Uses Triangle Inequality Theorem to determine the validity of a triangle
* Calculates perimeter and area of a triangle
* Luaunit Testing

## Running the Project
Before using this project you will need to install C++14 or alternatively Lua5.1+.

To run the project in your local environment using C++, follow these steps:
1. Download v2.0.2-stable from Releases (.zip) or (tar.gz)
2. Unzip once for .zip file or unzip twice for tar.gz file to get content
3. Open a terminal in the folder
4. Run the commands below
```bash
# Windows
g++ src\cpp\main.cpp -o bin\main
bin\main

# Linux
g++ src/cpp/main.cpp -o bin/main
bin/main
```

To run the project in your local environment using Lua, follow these steps:
1. Download v2.0.2-stable or v2.1.0-stable from Releases (.zip) or (tar.gz)
2. Perform steps 2 - 3 from C++ guide
3. Run the commands below
```bash
# Windows
lua src\lua\main.lua

# Linux
lua src/lua/main.lua
```
