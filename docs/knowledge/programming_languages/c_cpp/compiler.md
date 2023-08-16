# clang vs GCC

## clang

### Use sanitizers in clang / clang++

The Clang compiler provides a set of powerful tools called "`sanitizers`" that
help developers catch various types of bugs in their C and C++ code, such as
memory errors, undefined behavior, and data races. These tools are incredibly
valuable for identifying and fixing issues that might lead to crashes, security
vulnerabilities, or other unexpected behavior in your programs. Let's go through
the steps to use some of the most common sanitizers with Clang.

1. **AddressSanitizer (ASan):**
   - **Purpose:** Detects memory errors such as buffer overflows,
     use-after-free, and other memory-related issues.
   - **Usage:** To enable AddressSanitizer, compile your code with the
     `-fsanitize=address` flag:

     ```bash
     clang -fsanitize=address -g your_source_file.c -o your_program
     ```

   - **Running:** Execute your program as usual. If any memory issues are
     detected, you will see an error message describing the issue and the
     location in your code where the problem occurs.

2. **UndefinedBehaviorSanitizer (UBSan):**
   - **Purpose:** Detects undefined behavior in your code, which can lead to
     unpredictable results.
   - **Usage:** To enable UndefinedBehaviorSanitizer, compile your code with the
     `-fsanitize=undefined` flag:

     ```bash
     clang -fsanitize=undefined -g your_source_file.c -o your_program
     ```

   - **Running:** Run your program normally. If any undefined behavior is
     encountered, the sanitizer will provide information about the issue and its
     location in your code.

3. **ThreadSanitizer (TSan):**
   - **Purpose:** Detects data races and other threading-related bugs in your
     code.
   - **Usage:** To enable ThreadSanitizer, compile your code with the
     `-fsanitize=thread` flag:

     ```bash
     clang -fsanitize=thread -g -pthread your_source_file.c -o your_program
     ```

     Note the use of the `-pthread` flag, which is necessary when using
     ThreadSanitizer.
   - **Running:** Execute your program as you would normally. If any data races
     are detected, the sanitizer will provide information about the race and the
     involved threads.

Remember that using sanitizers may incur some runtime overhead, so they are
primarily intended for debugging and testing purposes during development. It's
also a good practice to compile your code with debugging information (using the
`-g` flag) to get more accurate and informative error messages.

Utilizing Clang sanitizers can significantly improve the reliability and
security of your C and C++ programs. It's recommended to integrate them into
your development workflow to catch bugs early and ensure the robustness of your
code.
