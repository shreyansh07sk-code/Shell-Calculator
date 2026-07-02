Problem Statement

Interactive CLI Shell Calculator

Problem

Performing basic arithmetic operations in a Linux terminal often requires using external utilities or manually writing commands. Beginners learning Bash scripting also need a practical project to understand concepts such as loops, conditional statements, case statements, input validation, regular expressions, and error handling.

Many simple calculator scripts do not validate user input, lack decimal number support, or fail to handle errors such as division by zero, resulting in incorrect output or program crashes.

Objective

The objective of this project is to develop a menu-driven Command Line Interface (CLI) calculator using Bash Shell Scripting that performs basic arithmetic operations safely and efficiently.

The calculator should:

- Provide an interactive menu for users.
- Perform addition, subtraction, multiplication, and division.
- Support both integer and decimal values.
- Validate user input using regular expressions.
- Prevent invalid numeric entries.
- Handle division-by-zero errors gracefully.
- Continue running until the user chooses to exit.

Proposed Solution

The solution is an interactive Bash shell application that repeatedly displays a menu, accepts user input, validates the entered values, performs the selected arithmetic operation using the "bc" utility for decimal calculations, and displays the result. The program includes proper error handling and input validation to improve reliability and user experience.

Expected Outcome

The project provides a lightweight, efficient, and beginner-friendly command-line calculator that demonstrates fundamental Bash scripting concepts while ensuring accurate calculations and safe execution. It serves as a practical learning resource for students studying Linux, Shell Scripting, DevOps, and Cybersecurity.