# Lua Triangle Calculator

## A triangle calculator translated from C++ to Lua

This project was originally made in C++ by me in my time during college. It is a multiple file program that contains a version where you can use a triangle calculator in C++ or Lua. You should be able to use it with relative ease. In this code you can see the usage for how to do the following things:

* Linking of custom made files for Lua
* Usage of Metatables in Lua
* Writing Metamethods with colons vs dot

## Prerequisites

Before downloading this program you should have the following things installed depending on how you want to use this program 

* Lua 5.1 or higher
* C++14 or higher

## Installation

1. Clone the repository:
```bash
git clone https://github.com/Robert-Walker0/Lua-Triangle-Calculator.git
```

2. Navigate to your project directory:
```bash
cd Lua-Triangle-Calculator
```

## Uninstalling 

### Windows

1. Delete the project directory:
```bash
rmdir "Lua-Triangle-Calculator" /s /q
```

### Linux

1. Delete the project directory:
```bash
rm -rf "Lua-Triangle-Calculator"
```

## Usage

### Lua Version 

To use the triangle calculator, run the `lua src/lua/main.lua` file and follow the prompts to enter the side lengths.

### C++ Version

To use the triangle calculator for this version, compile `main.cpp` using the command `g++ src/cpp/main.cpp -o bin/main` and then run `bin/main` and follow the prompts to enter the side lengths to determine if something or not.

Please note that this version is behind the Lua version in some user friendly input aspects but it is still usable. It is the same version as I wrote in college, so that's why. 

## Licensing 

This project is licensed under the MIT License. 

## Contributing 

Contributers are always welcome here! Please feel free to submit a pull request or open an issue on this project. 

Please open an issue before submitting a pull request. 
