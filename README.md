# 🧮 Interactive CLI Shell Calculator

A simple yet powerful **Command Line Calculator** developed using **Bash Shell Scripting**. This calculator performs basic arithmetic operations with decimal number support, input validation, and safe error handling. It is designed for beginners learning Linux shell scripting and command-line programming.

---

# 📖 Overview

The Interactive CLI Shell Calculator is a Linux terminal-based application that allows users to perform arithmetic calculations through a menu-driven interface.

The project demonstrates:
- Bash scripting
- Conditional statements
- Loops
- Case statements
- Regular expressions
- Input validation
- Error handling
- Decimal calculations using `bc`

This project is suitable for Linux beginners and cybersecurity students learning shell scripting.

---

# ✨ Features

- ➕ Addition
- ➖ Subtraction
- ✖ Multiplication
- ➗ Division
- Decimal number support
- Negative number support
- Regular expression validation
- Division by zero protection
- Interactive menu
- Infinite loop until Exit
- Beginner-friendly code
- Lightweight and fast

---

# 🏗 System Architecture

```
                User
                  │
                  ▼
      Menu Driven Interface
                  │
                  ▼
         Input Validation
                  │
                  ▼
      Arithmetic Operation
                  │
                  ▼
        Result Generation
                  │
                  ▼
          Display Output
```

---

# 🔄 Project Workflow

1. Program starts.
2. Calculator menu is displayed.
3. User selects an operation.
4. User enters two numbers.
5. Input is validated.
6. Selected operation is performed.
7. Result is displayed.
8. Menu appears again.
9. User exits by selecting option 5.

---

# 💻 Technologies Used

- Bash Shell
- Linux Terminal
- bc (Basic Calculator Utility)
- Regular Expressions
- GNU/Linux

---

# 📂 Project Structure

```
Shell-Calculator/
│── dataset/
│── .env.example
│── .gitignore
│── calculator.sh
│── problem_statement.md
│── README.md
└── requirements.txt
└── LICENSE (optional)
```

---

# 📊 Dataset

This project does not use any external dataset.

The user provides input values during runtime through the terminal.

---

# 🖥 Output

Example Menu

```
==========================
   Simple Calculator
==========================
1. Addition
2. Subtraction
3. Multiplication
4. Division
5. Exit
==========================

Enter your choice [1-5]:
```

Example Output

```
Enter first number: 15
Enter second number: 5

✅ Result: 20
```

Division Example

```
Enter first number: 25
Enter second number: 4

✅ Result: 6.25
```

Division by Zero

```
Enter first number: 20
Enter second number: 0

❌ Error: Division by zero is mathematically undefined!
```

---

# ⚙ Installation

## Clone Repository

```bash
git clone https://github.com/YOUR_USERNAME/Shell-Calculator.git
```

Go inside project

```bash
cd Shell-Calculator
```

Give execution permission

```bash
chmod +x calculator.sh
```

Run

```bash
./calculator.sh
```

---

# 🚀 How to Use

### Step 1

Clone the repository.

### Step 2

Move into the project directory.

### Step 3

Give execute permission.

### Step 4

Run the script.

### Step 5

Select an operation.

### Step 6

Enter two numbers.

### Step 7

View the result.

### Step 8

Repeat calculations or choose Exit.

---

# 📝 Example

Addition

```
Choice: 1

Enter first number: 10

Enter second number: 20

Result: 30
```

Multiplication

```
Choice: 3

Enter first number: 5

Enter second number: 8

Result: 40
```

Division

```
Choice: 4

Enter first number: 10

Enter second number: 4

Result: 2.50
```

---

# 🔮 Future Improvements

- Scientific Calculator
- Square Root
- Power Function
- Percentage Calculation
- History Feature
- Colorful Terminal Output
- GUI Version
- Save Calculation Logs
- Expression Evaluation
- Keyboard Shortcut Support

---

# 👨‍💻 Author

**Shreyansh Khandelwal**

Cybersecurity Student

GitHub: https://github.com/YOUR_USERNAME

---

# 📜 License

This project is open-source and available under the MIT License.
