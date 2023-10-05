# How to contribute

This workshop has been created with great care and attention to detail. If you
want to contribute to this workshop, please read this document carefully.

## Markdown formatting

Please make sure that paragraphs are wrapped at 80 characters. This makes it
easier to read the markdown files in a text editor and changes are easier to see
and merge.

## markdown-code-runner

This project makes use of
[markdown-code-runner](https://github.com/basnijholt/markdown-code-runner) to
run the code blocks in the markdown files and generate output block. This is
done to make sure that the code blocks in the markdown files are up-to-date and
to prevent merge conflicts.

Please use the following command to run the code blocks in the markdown files:

```bash
markdown-code-runner README.md
```

You need to be logged into your Azure Account and have terraform installed.

**Careful this might make changes to your Azure account!**
