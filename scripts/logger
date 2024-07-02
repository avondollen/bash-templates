#!/bin/env bash

# Formatting
declare -r RESET_FORMATTING="\x1B[0m"
declare -r BOLD="\x1B[1m"
declare -r FAINT="\x1B[2m"

# Font Color Codes
declare -r RED_TEXT="\x1B[31m"
declare -r GREEN_TEXT="\x1B[32m"
declare -r BLUE_TEXT="\x1B[34m"

# Background Color Codes
declare -r BLACK_BACKGROUND="\x1B[40m"

# Basic colorized logging method.
# If environment variable LS_COLORS is not set, color formatting is not used.
logger ()
{
  if [ "$LS_COLORS" ]; then    
    case $1 in
      INFO)
        printf "${RESET_FORMATTING}%s\n" "$2"
        ;;
      CHILD)
        printf "${FAINT}%s${RESET_FORMATTING}\n" "$2"
        ;;
      SUCCESS)
        printf "${BOLD}${GREEN_TEXT}%s${RESET_FORMATTING}\n" "$2"
        ;;
      ERROR)
        printf "${BOLD}${RED_TEXT}${BLACK_BACKGROUND}%s${RESET_FORMATTING}\n" "$2"
        ;;
      DEBUG)
        printf "${BOLD}${BLUE_TEXT}%s${RESET_FORMATTING}\n" "$2"
        ;;
      *)
        logger ERROR "[Function:Logger]: invalid param: '$1'"
        printf "\n"
        exit 1
        ;;
    esac
  else
    printf "%s\n" "$2"
  fi
}


logger INFO    "--------------------------------------------"
logger INFO    "   B A S H    L O G G I N G    D E M O      "
logger INFO    "--------------------------------------------"
logger INFO    "Base proccess doing things."
logger CHILD   "Sub proccess doing things 1/3....."
logger CHILD   "Sub proccess doing things 2/3....."
logger CHILD   "Sub proccess doing things 3/3....."
logger SUCCESS "Sub proccess executed successfully."
logger INFO    "Printing Distro Description"
logger CHILD   "$(lsb_release -d)"
logger ERROR   "Exit-Code: 2 - error example"
logger DEBUG   "debugging example"
logger INFO    "--------------------------------------------"
printf "\n"
logger INFO "Showing loggers ability to handle bad inputs"
logger "goofed" "Lets break the logger function."

# Note: As  long as line 59 is present nothing else below will execute!
logger INFO "This will only be printed in line 59 is commented out/removed!"