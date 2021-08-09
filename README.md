# log
Log input commands that have been executed to a file.

# Description
A simple script with the intend to log commands that have been inputted by the user. The commands are only appended to the output file if the exit code is 0, which shows that it was successful. The script allows you to specify a list of commands that should not be logged. Furthermore, the output file name can also be specified.

# When to use
Whenever you need to setup something by e.g. installing packages repeatedly. This allows you to understand exactly what you have done (and of course manually change steps that are redundant).

# Usage
./log echo "This is a useless script."
> This is a useless script.

The line 'echo "This is a useless script." ' will then be appended to the output script file.

# Note
Do not use this script with sensitive information such as passwords.
