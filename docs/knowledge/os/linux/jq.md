# `jq`

`jq` is a powerful command-line JSON processor, to parse YAML files in Bash.
YAML and JSON have some similarities in structure, which makes `jq` a suitable
tool for parsing YAML as well. Here's an example of how to extract a list of
values associated with a specific key in a YAML file:

Assuming you have a YAML file named `example.yaml` with the following content:

```yaml
name: John
age: 30
hobbies:
  - Reading
  - Hiking
  - Cooking
```

You can extract the list of hobbies using `jq` like this:

```bash
#!/bin/bash

# Parse YAML using jq
hobbies=$(jq -r '.hobbies[]' example.yaml)

# Loop through the extracted values (hobbies)
IFS=$'\n'
for hobby in $hobbies; do
  echo "Hobby: $hobby"
done
```

Here's what each part of the script does:

1. `jq -r '.hobbies[]' example.yaml`: This command uses `jq` to extract the
   values associated with the "hobbies" key. The `-r` flag ensures that the
   output is in raw format (no quotes).

2. `IFS=$'\n'`: This sets the Internal Field Separator (IFS) to newline
   character (`\n`). This is done to iterate through the list of hobbies
   correctly in the `for` loop.

3. `for hobby in $hobbies; do ...`: This loop iterates through each extracted
   hobby and prints it.

When you run this script, it will output:

```
Hobby: Reading
Hobby: Hiking
Hobby: Cooking
```

You can modify the script to use any key from your YAML file and extract the
corresponding list of values. Just replace `.hobbies[]` with the key you want to
extract.
