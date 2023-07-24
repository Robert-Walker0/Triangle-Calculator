#include <iostream>
#include <cmath>

void get_sides(double side1, double side2, double side3, double &perimeter, double &area);
//This function takes 5 parameters. 3 pass by value that are doubles and 2 pass by reference that are doubles.
//This function gets the sides for the program and allows for the parameters to get parameters later on in the program by letting them sit there. This function returns nothing.

void triangle(double sA, double sB, double sC, double &p, double &a);
//This function takes 5 parameters. 3 pass by value that are doubles and 2 pass by reference that are doubles. 
//This function's job is to compute the semiperimeter, perimter, and the area. It also is supposed to determine if the shape is a triangle. This function returns nothing
void reminder();
//This function gives the user a reminder on how to quit the program every
//single time they finish with a triangle.

int main()
{
	double sA, sB, sC, p, a;
	get_sides(sA, sB, sC, p, a);
}

void get_sides(double side1, double side2, double side3, double &perimeter, double &area)
{
	while(side1 > 0)
	{
		reminder();
		std::cout << "Enter the first number: ";
		std::cin >> side1;
		
		if(side1 > 0)
		{
			std::cout << "Enter the second number: "; 
			std::cin >> side2;
			std::cout << "Enter the third number: "; 
			std::cin >> side3;
			triangle(side1, side2, side3, perimeter, area);
		} else {
			break;
		}
	}
}

void triangle(double sA, double sB, double sC, double &p, double &a)
{
  double s = (sA + sB + sC)/2;
  a = sqrt(s * (s - sA) * (s - sB) * (s - sC));
  p = s * 2;
  if(std::isnan(sqrt(s * (s - sA) * (s - sB) * (s - sC))) || a == 0) {
	  std::cout << sA << "," << sB << "," << sC << ": not a triangle" << std::endl;
  } else {
	  std::cout << sA << "," << sB << "," << sC << ": perimeter=" << p << " area=" << a << std::endl;
  }
}

void reminder()
{
	std::cout << "REMINDER: To quit, just type in 0 for the first number." << std::endl;
}
