
## Search by file name

### Find file by name
find . -name "*keyword*"

### Find file by case insensitive search
find . -iname "*keyword*"

### Find all directories
find . -type d

### Find all files
find . -type f

### Find files exlcuding some extensions
find . -type f -not -name '*.log'

## Search by size

### search file size less than 1MB
find . -type f -size -1M

## Search by grep

```
grep command in Unix/Linux
Options	Description
-i	Ignore case distinctions on Linux and Unix
-w	Force PATTERN to match only whole words
-v	Select non-matching lines
-n	Print line number with output lines
-h	Suppress the Unix file name prefix on output
-H	Print file name with output lines
-r	Search directories recursivly on Linux
-R	Just like -r but follow all symlinks
-l	Print only names of FILEs with selected lines
-c	Print only a count of selected lines per FILE
--color	Display matched pattern in colors
-m NUMBER	Stop grep command NUMBER selected lines
-o	Display only matched parts of lines
-B NUMBER	Display NUMBER lines of before matched context
-A NUMBER	Show NUMBER lines of after matched context
-C NUMBER	Display NUMBER lines of output context
```
