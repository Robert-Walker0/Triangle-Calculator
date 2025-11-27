# Triangle Calculator

## A simple CLI tool that determines whether three side lengths form a triangle

This project was originally developed in C++ during my freshman year of college. It has since been rewritten in Lua with testing (using lunatest) and an updated method for validating triangles.

If you're looking for a simple, clean starting point for creating a triangle calculator, want to learn how to validate basic triangles, or want to compare implementations between C++ and Lua, this project will be of great help to you. 

* Lua and C++ versions are available in `v2.0.2-stable` release.
* `v2.1.0-stable` contains properly written Lua tests for input and triangles.

## Features

* Command-line interface application
* Uses Triangle Inequality Theorem to determine the validity of a triangle
* Calculates perimeter and area
* Includes tests (Lua)

## Prerequisites

Make sure you have the following installed: 
* Lua 5.1 or higher

(For older releases):
* C++14 or higher

Note: C++ was dropped for the higher version of this program (`v2.1.0-stable`)

## Installation

```bash
git clone https://github.com/Robert-Walker0/Triangle-Calculator.git
cd Triangle-Calculator
```

## Uninstalling 

```bash
# Windows (Using Command Prompt)
rmdir "Triangle-Calculator" /s /q

# Linux
rm -rf "Triangle-Calculator" 
```

## Usage

To use the triangle calculator, run the commands below and follow the prompts afterwards.

### Lua Usage
```bash
# Windows
lua .\src\lua\main.lua

# Linux
lua src/lua/main.lua
```


### C++ Usage

```bash
# Building for Windows

g++ src\cpp\main.cpp -o bin\main
bin\main

# Building for Linux

g++ src/cpp/main.cpp -o bin/main
bin/main
```

## Contributing 

Contributors are always welcome here! Please feel free to submit a pull request or open an issue on this project. 

Please open an issue before submitting a pull request. 
