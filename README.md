See [Talk slides]()

# Beginner Guide to Debugging & Testing In Flutter
*Paul Jeremiah - FlutterConf23 Talk*

## Outlines
- **Understanding Debugging, its tools & techniques**
- **Handling Exceptions & Errors like a Pro.**
- **Basic Testing In Flutter**


### Understanding Debugging, its tools & techniques
> If debugging is the process of removing software bugs, then programming must be the process of putting them in. - Edsger Dijkstra

- **What is debugging?**\
    Everyone makes mistakes, same as programmers. This mistakes made in our codes are called bugs. And the process of intentionally finding and fixing this bugs is called **Debugging**.

- **Debugging Process**\
    To make the software programs or products bug-free, this process should be done before releasing them into the market. The steps involved in this process are,
    
    - ***Identifying the error***:\
    It saves time and avoids the errors at the user site. Identifying errors at an earlier stage helps to minimize the number of errors and wastage of time.

    - ***Identifying the error location***:\
    The exact location of the error should be found to fix the bug faster and execute the code.

    - ***Analyzing the error***:\
    To understand the type of bug or error and reduce the number of errors we need to analyze the error. Solving one bug may lead to another bug that stops the application process.

    - ***Prove the analysis***:\
    Once the error has been analyzed, we need to prove the analysis. It uses a test automation process to write the test cases through the test framework.

    - ***Fix and Validate***:\
    This is the final stage to check all the new errors, changes in the software or program and executes the application.

- **Errors that requires debugging.**\
    Software defects arise due to the complexity that is involved in software development. Minor production errors are also observed after the software is live because customers use it in unexpected ways. We give below some common types of errors that often require the process of debugging.

    - ***Syntax errors***\
    A syntax error is a bug that occurs when a computer program has an incorrectly typed statement.

    - ***Semantic errors***\
    Semantic errors occur due to the improper use of programming statements.

    - ***Logic errors***\
    Logic errors occur when programmers misrepresent the step-wise process or algorithm of a computer program.

    - ***Runtime errors***\
    Runtime errors occur due to the computing environment in which the software code runs. 

- **Helpful tools used for Debugging.**\
    As debugging is complex and not really for the fainted heart. There are some amazing tools that can help you to easily catch bugs before or after it occures.

    - ***Dart DevTools***: Dart DevTools is a suite of web-based tools that provide insights into your Dart and Flutter apps. It includes tools for inspecting the widget tree, analyzing memory usage, profiling performance, and more. 

    - ***Debugger in IDEs***: Integrated Development Environments (IDEs) like Android Studio and Visual Studio Code (with the Dart and Flutter extensions) offer built-in debuggers. They allow you to set breakpoints, step through code, inspect variables, and evaluate expressions during runtime.

    - ***Logging & Logging Liberies***: Dart provides a print() function that allows you to output messages to the console and also, some  various logging libraries available, such as logger, that offer more advanced logging features like different log levels, filtering, and formatting. These can be especially useful in larger projects.

    - ***Assert Statements***: Dart's assert() function is useful for adding runtime checks during development. If the condition in an assert statement evaluates to false, an assertion error is thrown. This can help catch issues early during development.

    - ***Flutter Inspector***: This tool is a part of the Flutter framework and provides a visual representation of the widget hierarchy. It helps you understand how widgets are nested and how they interact with each other.

- **Techniques & culture in debugging.**\
    To perform the debugging process easily and efficiently, it is necessary to follow some techniques. The most commonly used debugging strategies are,

    - ***Debugging by brute force***\: This is one of the most commonly used technique. This is done by taking memory dumps of the program which contains a large amount of information with intermediate values and analyzing them, but analyzing the information and finding the bugs leads to a waste of time and effort.

    - ***Induction strategy***: includes the Location of relevant data, the Organization of data, the Devising hypothesis (provides possible causes of errors), and the Proving hypothesis.

    - ***Backtracking strategy***: is used to locate errors in small programs. When an error occurs, the program is traced one step backward during the evaluation of values to find the cause of bug or error.

    - ***Debugging by testing***: is the conjunction with debugging by induction and debugging by deduction technique. The test cases used in debugging are different from the test cases used in the testing process.

    - ***Go out, touch the grass***: This is my favorite techniques.


### Handling Exceptions & Errors like a Pro.
- **Difference between Exceptions & Errors.**
- **Why apps crashes on exceptions.**
- **Using `Try and Catch`, `print()`, and breakpoints.**
- **Helpful packages to handle exceptions.**
- **Reporting Exceptions in your apps.**

### Basic Testing In Flutter
- **What is Testing?**
- **Why Testing?**
- **Unit & Widget test the how, and what it is.**
- **Integration Testing: The real-world test scene.**
