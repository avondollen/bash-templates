#!/bin/bash

# Basic colorized logging method.
# If environment variable LS_COLORS is not set, color formatting is not used.
logger ()
{
  if [ "$LS_COLORS" ]; then
    local logging_color
    
    case $1 in
      # Foreground Process - Terminal default "Foreground Text" color
      "base_proc")
        logging_color=$(awk '{ sub(/.*rs=/, ""); sub(/:.*/, "");print }' <<< "${LS_COLORS}")
        ;;
      # Child Processes - Terminal Color Scheme for *.bak files
      "child_proc")
        logging_color=$(awk '{ sub(/.*:*.bak=/, ""); sub(/:.*/, "");print }' <<< "${LS_COLORS}")
        ;;
      # Success - Terminal Color Scheme for executable Files
      "success")
        logging_color=$(awk '{ sub(/.*:ex=/, ""); sub(/:.*/, "");print }' <<< "${LS_COLORS}")
        ;;
      # Error - Terminal Color Scheme for Orphan Symlinks
      "error")
        logging_color=$(awk '{ sub(/.*:or=/, ""); sub(/:.*/, "");print }' <<< "${LS_COLORS}")
        ;;
      "debug")
        logging_color=$(awk '{ sub(/.*:di=/, ""); sub(/:.*/, "");print }' <<< "${LS_COLORS}")
        ;;
      *)
        logger "error" "[Function:Logger]: invalid param: '$1'"
        printf "\n"
        exit 1
        ;;
    esac

  printf "\e[%sm%s\e[0m \n" "${logging_color}" "$2"

  else
    printf "%s\n" "$2"
  fi
}

logger "base_proc" "--------------------------------------------"
logger "base_proc" "   B A S H    L O G G I N G    D E M O      "
logger "base_proc" "--------------------------------------------"
logger "base_proc" "Base proccess doing things."
logger "child_proc" "Sub proccess doing things 1/3....."
logger "child_proc" "Sub proccess doing things 2/3....."
logger "child_proc" "Sub proccess doing things 3/3....."
logger "success" "Sub proccess executed successfully."
logger "base_proc" "Printing Distro Description"
logger "child_proc" "$(lsb_release -d)"
logger "error" "Exit-Code: 2 - error example"
logger "debug" "debugging example"
logger "base_proc" "--------------------------------------------"
printf "\n"
logger "base_proc" "Showing loggers ability to handle bad inputs"
logger "goofed" "Lets break the logger function."

# Note: As  long as line 59 is present nothing else below will execute!
logger "base_proc" "This will only be printed in line 59 is commented out/removed!"