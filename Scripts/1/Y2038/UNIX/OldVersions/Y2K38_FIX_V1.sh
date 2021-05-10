#!/bin/sh
# Start of script

# Warning: this script is bad code and may not work correctly, and may look bad to experienced programmers

# man date (manual entry for date)

# Changing the date
function fullReset {
  # set date 000000000000 # Sets the date to January 1st 1970 at 12:00 am UTC-0 (formatting may not be correct)
  set time 000000000000 # Sets the date to January 1st 1970 at 12:00 am UTC-0 (formatting may not be correct)
}
function April2010 {
  set date 042708002010 # Sets the date to April 27, 2010 8:00 am
}
function lastHour {
  set date 011902142038 # Sets the date to January 19th 2038 at 2:14 am (formatting may not be correct)
}
# return lastHour()
return April2010()
echo ("The date is now" + date())
break
return fullReset()
echo ("The date is now" + date())
break
return lastHour()
echo ("The date is now" + date())
break
# This script may not work

# File info
# File type: Bourne Again SHell script (*.sh)
# File version: 1 (Sunday, May 9th 2021 at 5:41 pm)
# Line count (including blank lines and compiler line): 37

# End of script
