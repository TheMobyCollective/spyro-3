#!/usr/bin/env bash

# Colours
RED='\033[0;31m'
GRN='\033[0;32m'
NC='\033[0m'

# Files
mk="tools/mkpsxiso.exe"
wt="tools/wadtoolrust.exe"
wadd="wad-data"
cdd="cd-data"
bx="cd-config.xml"
wj="wad.json"
bw="build/wad"
be="build/PSX.EXE"
cdi="Spyro3_build.bin"
cdc="Spyro3_build.cue"

# Check mkpsxiso and wadtoolrust are present
if [ ! -x $mk ]; then
  echo -e "${RED}$mk does not exist or is not executable. Please place a copy of mkpsxiso into this directory and re-run.${NC}"
  echo -e "https://github.com/Lameguy64/mkpsxiso"
  exit 1
elif [ ! -x $wt ]; then
  echo -e "${RED}$wt does not exist or is not executable. Please place a copy of wadtool into this directory and re-run.${NC}"
  echo -e "https://github.com/altro50/wadtool"
  exit 1
elif [ ! -d $wadd ]; then
  echo -e "${RED}The $wadd directory does not exist. Please run the \"prepare_cd.sh\" script first and re-run.${NC}"
  exit 1
elif [ ! -d $cdd ]; then
  echo -e "${RED}The $cdd directory does not exist. Please run the \"prepare_cd.sh\" script first and re-run.${NC}"
  exit 1
elif [ ! -s $cdd/$bx ]; then
  echo -e "${RED}The $bx build config file does not exist. Please run the \"prepare_cd.sh\" script first and re-run.${NC}"
  exit 1
elif [ ! -s $wadd/$wj ]; then
  echo -e "${RED}The $wj WAD config file does not exist. Please run the \"prepare_cd.sh\" script first and re-run.${NC}"
  exit 1
fi

# Overlays and executable
cp $bw/* $wadd
cp $be $cdd/SCUS_944.67

# Build the wad
$wt pack $wadd $cdd/WAD.WAD

# mkpsxiso
$mk -q -o $cdi -c $cdc -y $cdd/$bx

# Finish
echo -e "${GRN}Build complete - $cdi.${NC}"
