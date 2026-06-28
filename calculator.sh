#!/bin/bash

# Simple Calculator using Shell Script

while true
do
    echo "=========================="
    echo "   Simple Calculator"
    echo "=========================="
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Exit"
    echo "=========================="

    read -p "Enter your choice: " choice

    # Exit condition
    if [ "$choice" -eq 5 ]; then
        echo "Exiting Calculator..."
        break
    fi

    # Take input numbers
    read -p "Enter first number: " num1
    read -p "Enter second number: " num2

    # Validate input (numbers only)
    if ! [[ "$num1" =~ ^-?[0-9]+(\.[0-9]+)?$ && "$num2" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; then
        echo "❌ Invalid input! Please enter valid numbers."
        continue
    fi

    case $choice in
        1)
            result=$(echo "$num1 + $num2" | bc)
            echo "✅ Result: $result"
            ;;
        2)
            result=$(echo "$num1 - $num2" | bc)
            echo "✅ Result: $result"
            ;;
        3)
            result=$(echo "$num1 * $num2" | bc)
            echo "✅ Result: $result"
            ;;
        4)
            if [ "$num2" == "0" ]; then
                echo "❌ Error: Division by zero!"
            else
                result=$(echo "scale=2; $num1 / $num2" | bc)
                echo "✅ Result: $result"
            fi
            ;;
        *)
            echo "❌ Invalid choice!"
            ;;
    esac

    echo ""
done
