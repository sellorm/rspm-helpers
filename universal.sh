# universal helper stuff


# anyone in the rstudio-pm group can use it
RSPMGROUP=$(getent group rstudio-pm | grep -w ${LOGNAME} >/dev/null \
            && echo true || echo false)
if [[ ${RSPMGROUP} == false ]]; then
  echo "Error: This utility can only be run by a member of the rstudio-pm group"
  exit 1
else
  echo "Info: rstudio-pm group membership confirmed"
fi


# check for the rspm tool
RSPMCLI=/opt/rstudio-pm/bin/rspm
if [[ -f $RSPMCLI ]]; then
  echo "Info: $RSPMCLI found - continuing"
else
  echo "Error: $RSPMCLI not found - are you sure RSPM is installed?"
  exit 1
fi
