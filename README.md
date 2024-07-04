# bash-templates

A library of common design patterns used in bash scripting.

## Common Reoccurring Bash Script Components

* [options_handler](scripts/options_handler) - Starting point to include options for your script. 
* [logger](scripts/logger) - Simple colorized logging function; *INFO*, *CHILD*, *SUCCESS*, *ERROR*, *DEBUG*
* [trap_and_redirect](scripts/trap_and_redirect) - Format stderr before printing to console.
* [ansi](scripts/ansi) - List of ANSI Escape codes for formatting, and color.

## References

* [ruanyf/simple-bash-scripts](https://github.com/ruanyf/simple-bash-scripts) - Inspiration for the structure of this repository.
