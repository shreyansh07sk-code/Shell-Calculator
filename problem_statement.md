# Problem Statement

## Interactive CLI Shell Calculator

### Problem 1: Invalid Menu Selection

Users may enter an invalid menu option (such as 6, 0, or letters), causing unexpected behavior.

**Solution Used in Code**

```bash
if [[ ! "$choice" =~ ^[1-4]$ ]]; then
    echo "❌ Invalid choice! Please select an option between 1 and 5."
    continue
fi
```

**Result**
- Accepts only valid menu options.
- Prevents unexpected program execution.

---

### Problem 2: Invalid Number Input

Users may enter letters or special characters instead of numbers.

**Solution Used in Code**

```bash
if ! [[ "$num1" =~ ^-?[0-9]+(\.[0-9]+)?$ && "$num2" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; then
    echo "❌ Invalid input! Please enter valid numeric values."
    continue
fi
```

**Result**
- Accepts only valid numeric values.
- Supports integers, negative numbers, and decimals.

---

### Problem 3: Decimal Calculation Support

Bash arithmetic supports only integers by default.

**Solution Used in Code**

```bash
result=$(echo "$num1 + $num2" | bc)
```

and

```bash
result=$(echo "scale=2; $num1 / $num2" | bc)
```

**Result**
- Performs accurate decimal calculations.
- Displays results up to two decimal places.

---

### Problem 4: Division by Zero

Dividing by zero causes mathematical errors.

**Solution Used in Code**

```bash
is_zero=$(echo "$num2 == 0" | bc)

if [ "$is_zero" -eq 1 ]; then
    echo "❌ Error: Division by zero is mathematically undefined!"
else
    result=$(echo "scale=2; $num1 / $num2" | bc)
fi
```

**Result**
- Prevents invalid calculations.
- Displays a meaningful error message instead of crashing.

---

### Problem 5: Continuous Calculator Usage

Users should not have to restart the program after every calculation.

**Solution Used in Code**

```bash
while true
do
    ...
done
```

**Result**
- Calculator keeps running until the user chooses Exit.

---

### Problem 6: Safe Program Exit

The application should terminate only when the user selects Exit.

**Solution Used in Code**

```bash
if [ "$choice" -eq 5 ] 2>/dev/null; then
    echo "Exiting Calculator. Goodbye!"
    break
fi
```

**Result**
- Allows users to exit safely.
- Prevents accidental termination.

---

### Problem 7: Organized Arithmetic Operations

Handling multiple arithmetic operations using many `if` statements makes the code difficult to maintain.

**Solution Used in Code**

```bash
case $choice in
    1)
        result=$(echo "$num1 + $num2" | bc)
        ;;
    2)
        result=$(echo "$num1 - $num2" | bc)
        ;;
    3)
        result=$(echo "$num1 * $num2" | bc)
        ;;
    4)
        ...
        ;;
esac
```

**Result**
- Improves code readability.
- Makes the program easier to maintain and extend.

---
# 🌟 Unique Features

- ✔ Interactive menu-driven interface
- ✔ Decimal arithmetic support using **bc**
- ✔ Regex-based numeric validation
- ✔ Handles positive, negative, and decimal values
- ✔ Division-by-zero protection
- ✔ User-friendly error messages
- ✔ Lightweight and fast execution
- ✔ Beginner-friendly Bash implementation
- ✔ Continuous operation using loops
- ✔ Structured code using **case statements**

---
# 🚀 Why This Project is Useful

This project helps students and Linux beginners understand important Bash scripting concepts such as:

- Shell programming fundamentals
- Conditional statements
- Loops
- Case statements
- User input handling
- Regular expressions
- Arithmetic operations
- Error handling
- Linux command-line programming
- Writing secure and reliable shell scripts

It also serves as a foundation for developing more advanced Linux automation and DevOps scripts.

---
## Conclusion

The Interactive CLI Shell Calculator solves common problems found in basic shell calculator scripts by implementing:
- Input validation using Regular Expressions (Regex)
- Decimal arithmetic using the `bc` utility
- Division-by-zero protection
- Menu validation
- Continuous execution with loops
- Structured decision-making using `case`
- User-friendly error messages

These features make the calculator reliable, secure, and suitable for learning Bash Shell Scripting.
