# Writing Documents in reStructuredText (RST)

reStructuredText is a lightweight markup language that's commonly used for
documenting code, software projects, and technical documents. It's simple and
easy to learn. Here's a basic overview of how to use RST:

1. **Headers:** Use underlines to create headers. For example:

   ```rst
   My Document Title
   =================
   ```

2. **Sections:** Use colons and indentation for sections. For example:

   ```rst
   Section 1
   =========

   Subsection 1.1
   --------------
   ```

3. **Lists:** Use asterisks for bullet points and numbers for ordered lists.

   ```rst
   * Item 1
   * Item 2

   1. First item
   2. Second item
   ```

4. **Links:** Create links with backticks and angle brackets.

   ```rst
   `OpenAI Website <https://www.openai.com>`_
   ```

5. **Code Blocks:** Use double colons for code blocks.

   ```rst
   ::

       def my_function():
           return "Hello, world!"
   ```

6. **Emphasis:** Use asterisks or underscores for emphasis.

   ```rst
   *italic* or _italic_
   **bold** or __bold__
   ```

7. **References:** Create references with double colons.

   ```rst
   .. _my-reference-label:

   This is a reference to :ref:`my-reference-label`.
   ```

8. **Images:** Include images with double colons.

   ```rst
   .. image:: path/to/image.png
      :width: 200
   ```

9. **Tables:** Create tables using the `+` character for borders.

   ```rst
   +---------------+------------+
   |   Header 1    |  Header 2  |
   +===============+============+
   |   Data 1      |  Data 2    |
   +---------------+------------+
   ```

## Using RST Linters

Linters help ensure that your RST documents are formatted correctly and adhere
to best practices. Here's how you can use three popular RST linters: `rst-lint`,
`doc8`, and `rstcheck`.

### rst-lint

`rst-lint` is a tool that checks your RST files for compliance with the Docutils
stylesheet and reports any issues.

To use `rst-lint`:

1. Install it using pip:

   ```shell
   pip install rst-lint
   ```

2. Run `rst-lint` on your RST file:

   ```shell
   rst-lint your_document.rst
   ```

3. `rst-lint` will provide feedback and suggestions for improvements in your RST
file.

### doc8

`doc8` is a style checker for RST documents that enforces the style guide
specified in the OpenStack project.

To use `doc8`:

1. Install it using pip:

   ```shell
   pip install doc8
   ```

2. Run `doc8` on your RST file:

   ```shell
   doc8 your_document.rst
   ```

3. `doc8` will check your document for style violations and provide a report.

### rstcheck

`rstcheck` is a linter that checks RST files for syntax errors and style issues.

To use `rstcheck`:

1. Install it using pip:

   ```shell
   pip install rstcheck
   ```

2. Run `rstcheck` on your RST file:

   ```shell
   rstcheck your_document.rst
   ```

3. `rstcheck` will identify syntax errors and suggest improvements.

By following these guidelines and using these linters, you can create
well-structured and error-free RST documents for your daily work.

## References

- [rst linter](https://docs.restructuredtext.net/articles/linter)
