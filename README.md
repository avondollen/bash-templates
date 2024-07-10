# bash-templates

A library of common design patterns used in bash scripting.

## Common Reoccurring Bash Script Components

* [options_handler](scripts/options_handler) - Starting point to include options for your script. 
* [logger](scripts/logger) - Simple colorized logging function; *INFO*, *CHILD*, *SUCCESS*, *ERROR*, *DEBUG*
* [loggerV2](scripts/loggerV2) - Colorize through file descriptor redirect.
* [trap](scripts/trap) - Example usage of trap, Cleanly stops script when (Ctrl+C) signal is triggered.
* [ansi](scripts/ansi) - List of ANSI Escape codes for formatting, and color.
* [date_formats](scripts/date_formats) - List of common Time & Date formatting strings.

## References

* [ruanyf/simple-bash-scripts](https://github.com/ruanyf/simple-bash-scripts) - Inspiration for the structure of this repository.
