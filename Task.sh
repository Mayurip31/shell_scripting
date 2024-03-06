!/bin/bash

# Create a directory
mkdir Task

# Change into the created directory
cd Task

# create file

touch file{1.3}.txt

#  Add content in files using redirectors

echo "First file" > file1.txt
echo "second file" > file2.txt
echo "third file" > file3.txt

# Display the contents of all three files
cat file1.txt
cat file2.txt
cat file3.txt

## To run script 

bash file.sh