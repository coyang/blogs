# How to get the commit ID of the latest tag in a Git repository

**Command:**

```bash
git rev-list --tags --max-count=1
```

Here's what this command does:

- `git rev-list` is a Git command that lists commit objects in reverse
  chronological order.
- `--tags` specifies that we want to include tags in the search.
- `--max-count=1` limits the output to only one result, which will be the latest
  tag.

When you run this command, Git will provide you with the commit ID of the latest
tag in the repository. You can use this commit ID for various purposes, such as
checking out the code at that specific tag or referencing it in your scripts or
documentation.