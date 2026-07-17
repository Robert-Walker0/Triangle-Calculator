# Triangle Calculator

![Latest Release](https://img.shields.io/github/v/release/Robert-Walker0/Triangle-Calculator?style=flat-square&color=blue)
![Build Status](https://img.shields.io/github/actions/workflow/status/Robert-Walker0/Triangle-Calculator/test.yml?branch=main&style=flat-square&label=tests)
![Lua Version](https://img.shields.io/badge/lua-5.1%2B-blueviolet?style=flat-square)
![C++ Version](https://img.shields.io/badge/c%2B%2B-14-00599C?style=flat-square&logo=c%2B%2B)
![License](https://img.shields.io/github/license/Robert-Walker0/Triangle-Calculator?style=flat-square&color=green)

## A simple CLI made for determining if three side lengths form a triangle

This project was originally developed in C++ during my college freshman years. It has been rewritten using Lua now.

If you're looking for a simple, clean starting point for creating a triangle calculator, want to learn how to validate basic triangles, or want to compare implementations between C++ and Lua, this project will be of great help to you.

* Lua and C++ versions are available in `v2.0.2-stable` release.
* `v2.1.0-stable` contains properly written Lua tests for input and triangles.

## Technologies

* C++ 14
* Lua 5.1+
* Lunatest
* Github Actions (Automated Testing)

Note: C++ was dropped for the higher version of this program (`v2.1.0-stable`)

## Features

* Command-line interface application
* Uses Triangle Inequality Theorem to determine the validity of a triangle
* Calculates perimeter and area of a triangle
* Lunatest Testing

## The Process
This project was assigned to me during my freshman year in college in my first C++ class in 2020. After receiving the project requirements, I began planning how to implement them using my knowledge of C++ up to that point in the class.

The project requirements were as follows:
1. When the user types zero for the first side, the program ends.
2. Determine if three sides form a valid triangle.
3. Compute and display the area and perimeter of a triangle. 
4. Use pass by reference instead of pass by value.
5. Program must be contained in one file.

To meet these requirements, I designed three main functions: `get_sides`, `reminder`, and `triangle`:

The first function, `get_sides` would control the program flow, leading it into using `reminder` and `triangle` functions.

The program worked as follows: The `get_sides` function would take in the variables and print out a reminder to type zero to quit via the `reminder` function. Next, if the user didn't type zero and continued, it would read in the input and output whether it makes up a triangle, its perimeter, and area via the `triangle` function.

All of these received comments to document their overall process for the program. I got an A on the assignment and kept it for later reference if I ever needed it again.

Three years after this project, I decided to remake it in the Lua Programming Language to learn how to use the language properly. With the much more added freedom of me being able to change how the project how I wanted, I changed a lot of things.

The new changes for this project were the following:

1. Better Project Organization
2. More Modular/Better Written Code Programming
3. Regular and Automated Tests
4. Proper Licensing and a README with a video demo of the project

I made the project organization a lot better for the Lua version, spreading it out into three folders: `lib/lua`, `src/lua`, and `tests`. The lib folder contained lunatest.lua used for writing unit tests in Lua. src/lua files were used to run all operations on a triangle, display its data, validate input, and run the main code responsible for the project. Finally, the tests tested the operations of a triangle and tested the input function validation to make sure it operated correctly.

The original triangle function got modularized into four different and more readable functions: `createTriangle`, `getPerimeter`, `getArea`, `new`, and `isTriangle`.

The `createTriangle` would use the `getInput` function to collect all the required sides then both the perimeter and area would be computed in this function by their own methods.

To print this data to the screen, the program would use the `printData` function from the triangle to show the sides, perimeter, and area cleanly on all separate lines.

With all of this, the main file would use the operation of creating a triangle, printing the data, and telling them if it is a triangle to complete the recreation of the program.

After all of that, I downloaded lunatest to create lua test for my project, commented the general ideas of the test to document how I would create the test, and implemented them within my project to make the code testable.

I then followed the same process for writing my tests with my GitHub workflow for automated testing.

## What I Learned
During this project, I’ve picked up important skills and a better understanding of complex ideas, which improved my project development skills:

🤖 Github Automation: 

* New Knowledge: I learned about the process of creating GitHub Workflows to test my code automatically on new pushes or pull requests.

🧪 Unit Testing:

* New  Knowledge: I spent time learning Lunatest and used it to make the required test to confirm my program worked correctly.

🌑 OOP for Lua Programming:

* New Knowledge: I learned how to work with metatables in Lua to mimic object-oriented programming to create triangles.

👨‍🏫 Writing a Good README:

* New Knowledge: In this project, I’ve become better at constructing READMEs by learning the aspects to make a good one, including technologies, features, running the project, licensing, and video demo.


## Running the Project
Before using this project you will need to install C++ 14 or alternatively Lua 5.1+ onto your machine.

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
## Video

https://github.com/user-attachments/assets/02ff411c-b50b-4d91-9c59-ef086fb427c8


