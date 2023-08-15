# pdf to text tool

## On linux env

There are several tools you can use on a Linux system to convert PDF files to
text (txt) or HTML. One of the most commonly used tools for this purpose is
`pdftotext`, which is part of the `Poppler` utility suite.

To install and use it, follow these steps:

### Install `Poppler`

Open your terminal and run the following command to install `Poppler` utilities,
which includes "pdftotext":

```bash
sudo apt-get install poppler-utils
```

### Convert PDF to Text (txt)

Once `Poppler` is installed, you can use the "`pdftotext`" command to convert a
PDF file to text. Navigate to the directory containing your PDF file and run the
following command:

```bash
pdftotext input.pdf output.txt
```

Replace `input.pdf` with the actual name of your PDF file and `output.txt` with
the desired name for the output text file.

### Convert PDF to HTML

If you want to convert a PDF file to HTML format, you can use the "pdftohtml"
command from the same Poppler utilities package. Run the following command:

```bash
pdftohtml input.pdf output.html
```

Replace `input.pdf` with the actual name of your PDF file and `output.html` with
the desired name for the output HTML file.

Remember that the quality of the conversion can vary depending on the complexity
of the PDF content. Some PDFs might have complex formatting, images, or other
elements that might not convert perfectly to text or HTML.

Also, keep in mind that there might be other tools available for PDF conversion
on Linux. For example, you might find "`pdf2txt`" or "`pdf2htmlEX`" as
alternatives.

Always check your distribution's package repository for the most up-to-date
information about available tools and their installation process.
