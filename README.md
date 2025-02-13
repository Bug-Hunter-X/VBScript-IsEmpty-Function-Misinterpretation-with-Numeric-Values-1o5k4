# VBScript IsEmpty Function Misinterpretation with Numeric Values

This repository demonstrates a subtle bug in VBScript related to the `IsEmpty` function and its interaction with numeric types. The `IsEmpty` function is intended to check if a variable is uninitialized or contains no value, but its behavior might be unexpected when dealing with numbers.

The issue arises when attempting to use `IsEmpty` to handle potential missing numeric arguments in a function. If a numeric argument is 0, `IsEmpty` incorrectly evaluates it as non-empty, leading to incorrect calculations or unexpected results.

## The Bug
The script `bug.vbs` demonstrates this problem. The function `f` checks if its arguments are empty using `IsEmpty` and sets them to 0 if they are. However, if the argument is 0, `IsEmpty` considers it as non-empty, leading to incorrect addition results.

## The Solution
The `bugSolution.vbs` provides a fix for the issue by using the `IsNumeric` function to check whether a variable is a number before performing the addition. This approach correctly accounts for both empty variables and numeric variables with a value of 0.

## How to Reproduce

1. Run `bug.vbs`. Observe the incorrect result.
2. Run `bugSolution.vbs`. Notice the corrected output.

## Lessons Learned

This bug highlights the importance of carefully considering the use of `IsEmpty` and other type-checking functions in VBScript, especially when dealing with numerical values. Using more specific checks, like `IsNumeric`, improves the correctness and robustness of your code.  Always carefully consider the data types and expected values when handling function inputs and outputs.