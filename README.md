See [Talk slides](https://docs.google.com/presentation/d/1EcJOB_32FJOXJuAmh2NeMeNIQunCp7mT/edit?usp=sharing&ouid=101455273561496206254&rtpof=true&sd=true)

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
    A syntax error is a bug that occurs when a computer program has an incorrectly typed statement.\
    *See [example](/dart_errors/bin/debugging_errors.dart)*

    - ***Semantic errors***\
    Semantic errors occur due to the improper use of programming statements.\
    *See [example](/dart_errors/bin/debugging_errors.dart)*


    - ***Logic errors***\
    Logic errors occur when programmers misrepresent the step-wise process or algorithm of a computer program.\
    *See [example](/dart_errors/bin/debugging_errors.dart)*



    - ***Runtime errors***\
    Runtime errors occur due to the computing environment in which the software code runs.\
    *See [example](/dart_errors/bin/debugging_errors.dart)*


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
Exception handling is like having a trusty sidekick by your side, ready to tackle unexpected errors that pop up during program execution.
By handling exceptions with finesse, you'll ensure your program stays upright and dazzle users with helpful error messages.

- **Difference between Exceptions & Errors.**
    In summary, errors and exceptions represent different types of problems that can occur during program execution. `Errors` are usually caused by serious problems that doesn’t usually past without incident, while `exceptions` are used to handle recoverable errors within a program.

- **Why flutter apps crashes on exceptions.**
    If exceptions isn’t caught, the isolate that raised the exception is suspended, and typically the isolate and its program are terminated. Your Android or iOS app crashes this kinds of anomalies occures.

- **Using *`Try & Catch`, `assert()`, `print()`*, `breakpoints` and other helpful packages for exception handling.**
    - ***Try and Catch***\
        They allow you to handle exceptions that may occur during the execution of your code. When you use a try-catch block in your application, you can catch exceptions and handle them appropriately. 
        
        For example, you may want to display an error message to the user or log the error for debugging purposes.

        Here's an example of how you can use try-catch blocks in your Flutter application:
        ```dart
        try {
            // your code here
        } catch (e) {
            // handle the error here
        }
        ```
    - ***Assertions***\
        Assert is a tool that can be used to validate assumptions about the state of your application during development. If an assertion fails, an exception is thrown, which can help you catch and debug errors early on. You can use assert statements to check whether your code is behaving as expected and to identify errors before they become problematic.

        Here's an example of how you can use assert in your Flutter application:

        ```dart 
        // Make sure the variable has a non-null value.
        assert(text != null);

        // Make sure the value is less than 100.
        assert(number < 100);

        // Make sure this is an https URL.
        assert(urlString.startsWith('https'));
        ```

    - ***Print(Logging)***\
        Using `print()` or a logging mechanisms to capture exceptions, stack traces, and essential information. These logs are your secret weapon for debugging and uncovering patterns of pesky errors.

        Example:
        ```dart
        try {
            // your code here
        } catch (e) {
            print(e); // this prints what e is.
        }
        ```
    - ***Breakpoints***\
        To set a breakpoint, click the left margin (the line number ruler) in the source area. Clicking once sets a breakpoint, which should also show up in the Breakpoints area on the left. Clicking again removes the breakpoint.

        **The call stack and variable areas**\
        When there is a breakpoint, our app pauses, and the devTools debugger shows the paused execution location in the source aree.

        When your application encounters a breakpoint, it pauses there, and the DevTools debugger shows the paused execution location in the source area.

        Within the Variables area, you can inspect individual objects by toggling them open to see their fields. Hovering over an object in the Variables area calls toString() for that object and displays the result.

       **Stepping through source code**\
        When paused, the three stepping buttons become active.

        **Use Step** in to step into a method invocation, stopping at the first executable line in that invoked method.\
        **Use Step** over to step over a method invocation; this steps through source lines in the current method.\
        **Use Step out**  to step out of the current method, without stopping at any intermediary lines.\

        In addition, the Resume button continues regular execution of the application.

    - ***Using Either Dart***\
        But on large codebases, it's hard to figure out which functions might throw and which don't.

        Ideally, we want the signature of our functions to make it explicit that they can return an error. Using [either dart]() package can simplify that for us.
        ```dart
        Either<FormatException, double> parseNumber(String value) {
            try {
            return Right(double.parse(value));
            } on FormatException catch (e) {
            return Left(e);
            }
        }
        ```

- **Reporting Exceptions in your apps.**
    The wrong way to handle application errors is to offload the reporting to users. You’ve probably seen those Send Error Report popups when one of your applications crashes. Do you ever actually click it and opt-in to sending (potentially sensitive) data to the developer? Have you ever heard back from them about an investigation they made and a fix they’ve deployed to make your life easier? Probably not. There’s no confidence in submitting error reports, and some research finds that only *`1% of users actually report the errors they’ve experienced`*.

    Instead, you need to take a proactive approach to identify previously-unknown errors and exceptions without requiring direct feedback from your busy users.

    There’s no way to deal with errors “live” or in production — the only solution is to detect them via error monitoring and bug tracking and dispatch a developer or two to sort out the code.

    Example of such error monitoring bug tracking services:\
    **[Firebase Crashlytics](https://firebase.google.com/docs/crashlyticsDa)**\
    **[Datadog](https://docs.datadoghq.com/)**\
    **[Sentry](https://docs.sentry.io/)**


### Basic Testing In Flutter
Testing is the practice of evaluating your code to ensure that it behaves as expected. In Flutter, testing is a crucial aspect of app development. It helps you catch bugs early, validate functionality, and ensure that your app works as intended across various scenarios and user interactions.

- **What is Testing?**\
    Testing involves writing code specifically designed to assess the correctness of your application. It simulates various scenarios, interactions, and inputs to verify that your app's behavior aligns with your expectations.

- **Why Testing?**\
    ***Bug Detection:*** Testing helps identify bugs and defects in your code early in the development process, reducing the likelihood of issues in production.

    ***Confidence:*** Effective testing gives you confidence that your app works as expected, especially when making changes or adding new features.

    ***Refactoring:*** Tests act as safety nets during code refactoring. You can confidently refactor code, knowing that if the tests pass, you haven't broken anything.

    ***Documentation:*** Tests serve as documentation, illustrating how your code is supposed to be used and how it responds to different scenarios.

- **Unit & Widget test, The how**

    ***Unit Testing:***\
    Unit testing focuses on testing individual units or functions of your code in isolation. This means that dependencies are replaced with mock objects to isolate the code you're testing. In Flutter, the test package facilitates unit testing.

    Example:
    ```dart
    // Function to add two numbers
    int add(int a, int b) {
        return a + b;
    }

    void main() {
        test('Addition Test', () {
            expect(add(2, 3), 5); // Verifies that 2 + 3 equals 5
        });
    }
    ```


    ***Widget Testing:***\
    Widget testing is used to test UI components (widgets) and their behavior. It simulates user interactions, such as taps and scrolls, to ensure that your widgets respond correctly.

    Example:

    ```dart
    void main() {
        testWidgets('Counter Widget Test', (WidgetTester tester) async {
            await tester.pumpWidget(MyApp()); // Build the widget
            expect(find.text('0'), findsOneWidget); // Verify initial value

            await tester.tap(find.byIcon(Icons.add)); // Tap the add icon
            await tester.pump(); // Rebuild the widget
            expect(find.text('1'), findsOneWidget); // Verify updated value
        });
    }
    ```


    Testing is a broad topic, but starting with unit and widget testing provides a solid foundation for ensuring your Flutter app's quality. As you become more comfortable with these testing types, you can explore integration testing and more advanced concepts to enhance your testing suite further.