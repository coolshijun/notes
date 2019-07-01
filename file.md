
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
