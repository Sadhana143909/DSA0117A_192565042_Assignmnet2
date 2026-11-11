# C++ Programming Assignment – Questions 1 to 7

## Project Overview

This repository contains solutions for seven C++ programming questions based on functions, references, pointers, function overloading, classes, objects, static members, and friend functions.

Each question includes:
- Problem explanation
- Algorithm and pseudocode
- UML class diagram
- C++ source code
- Sample output
- Test cases
- Time and space complexity

## Objectives

1. Understand call by value, call by reference, and call by pointer.
2. Learn how returning references works and identify its risks.
3. Understand default arguments and function overloading.
4. Implement a Savings Account using classes and arrays.
5. Understand static data members and static member functions.
6. Implement friend functions and inline functions.
7. Improve a program using a circular array design.

## Questions Covered

### Q1 – Call by Value, Reference and Pointer
Demonstrates the differences between passing arguments by value, reference, and pointer. It also explains how a hostel fee concession can be calculated using these methods.

### Q2 – Return by Reference
Explains returning references from functions, modifying array elements, and avoiding dangling references and invalid memory access.

### Q3 – Default Arguments and Function Overloading
Demonstrates function overloading using different parameter types and default arguments to calculate courier charges.

### Q4 – Savings Account Management
Implements a SavingsAccount class with deposit, withdrawal, and mini-statement operations. It also explains the use of arrays and circular buffers for storing transactions.

### Q5 – Static Members in Bus Ticket Booking
Demonstrates static data members and static member functions to maintain issued ticket counts and seat capacity.

### Q6 – Friend Functions and Inline Functions
Uses a Time class with friend functions to calculate the difference between two times and compare them.

### Q7 – Circular Array Redesign
Improves transaction storage by using a circular array to maintain the latest 50 transactions efficiently.

## Technologies Used

- Programming Language: C++
- Compiler: GCC / MinGW
- IDE: Visual Studio Code / Code::Blocks / Dev-C++
- Diagram Tool: Gemini AI
- Documentation: Markdown

## How to Run the Programs

1. Install a C++ compiler such as GCC.
2. Open the project folder in your preferred IDE.
3. Open the required `.cpp` file.
4. Compile the program.
5. Run the executable file.
6. Check the output against the sample output provided in the assignment.

### Compile Using GCC

```bash
g++ Q1.cpp -o Q1
./Q1
```

Replace `Q1.cpp` with the required source filename to run another question.

## Project Folder Structure

```text
CPP-Programming-Assignment/
│
├── README.md
│
├── Q1/
│   ├── Q1.cpp
│   └── Q1_UML.png
│
├── Q2/
│   ├── Q2.cpp
│   └── Q2_UML.png
│
├── Q3/
│   ├── Q3.cpp
│   └── Q3_UML.png
│
├── Q4/
│   ├── Q4.cpp
│   └── Q4_UML.png
│
├── Q5/
│   ├── Q5.cpp
│   └── Q5_UML.png
│
├── Q6/
│   ├── Q6.cpp
│   └── Q6_UML.png
│
└── Q7/
    ├── Q7.cpp
    └── Q7_UML.png
```

## Testing

Each program should be tested using normal inputs, boundary values, and invalid inputs wherever applicable.

| Question | Main Testing Area |
|---|---|
| Q1 | Value, reference and pointer changes |
| Q2 | Array modification and reference safety |
| Q3 | Function overload selection |
| Q4 | Deposit, withdrawal and transaction history |
| Q5 | Ticket count and seat capacity |
| Q6 | Time difference and comparison |
| Q7 | Circular buffer insertion and replacement |

## Learning Outcomes

After completing this assignment, the learner will be able to:

- Write and call functions using different parameter-passing methods.
- Understand references, pointers, and memory safety.
- Apply function overloading and default arguments.
- Create classes and objects using OOP concepts.
- Use static members and friend functions.
- Design efficient data storage using arrays and circular buffers.
- Analyze basic time and space complexity.

## Conclusion

This assignment provides practical knowledge of important C++ programming and object-oriented programming concepts. The seven programs demonstrate how these concepts can be applied to real-world examples such as hostel fee concessions, courier charges, savings accounts, and bus ticket booking systems.
