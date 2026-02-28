#!/usr/bin/env bash

# Colours
RED='\033[0;31m'
GRN='\033[0;32m'
NC='\033[0m'

# Files
dp="tools/dumpsxiso.exe"
wt="tools/wadtoolrust.exe"
wadd="wad-data"
cdd="cd-data"
bx="cd-config.xml"
wj="wad.json"
cdi="Spyro3.bin"

# Levels are 10 - 50 in the base game (excluding 19, 29, 39, 49)
getLevelId() {
  echo $((10 * (1 + $1 / 9) + ($1 % 9)))
}

# Cutscenes are 61 - 80 in the base game (excluding 72, which only appeared in one known prototype, but is empty in the final)
getCutsceneId() {
  echo $((61 + $1))
}

# If using newer versions of wadtoolrust this should work
updateDocumentedJson() {
  sed -i 's/"1.wad"/"title.ovl"/' $wadd/$wj
  sed -i 's/"common_code.ovl"/"loading.ovl"/' $wadd/$wj
  sed -i 's/"atlas_code.ovl"/"atlas.ovl"/' $wadd/$wj
  sed -i 's/"options_menu_code.ovl"/"options.ovl"/' $wadd/$wj
  sed -i 's/"credits_code.ovl"/"credits.ovl"/' $wadd/$wj
  for i in {0..36}; do
    local from="level_$i_.*_code.ovl"
    local to="level_$(getLevelId $i).ovl"
    sed -i "s/\"$from\"/\"$to\"/" $wadd/$wj
  done
  for i in {0..19}; do
    if [ $i -ne 11 ]; then # Skip level 72, it's empty in release builds 
      local from="cutscene$(($i + 1))_code.ovl"
      local to="cutscene_$(getCutsceneId $i).ovl"
      sed -i "s/\"$from\"/\"$to\"/" $wadd/$wj
    fi
  done
}

# If using older versions of wadtoolrust this should work
updateUndocumentedJson() {
  sed -i 's/"1.wad"/"title.ovl"/' $wadd/$wj
  sed -i 's/"69.wad"/"loading.ovl"/' $wadd/$wj
  sed -i 's/"178.wad"/"atlas.ovl"/' $wadd/$wj
  sed -i 's/"179.wad"/"options.ovl"/' $wadd/$wj
  sed -i 's/"182.wad"/"credits.ovl"/' $wadd/$wj
  for i in {0..36}; do
    local from="$((98 + 2 * $i)).wad"
    local to="level_$(getLevelId $i).ovl"
    sed -i "s/\"$from\"/\"$to\"/" $wadd/$wj
  done
  for i in {0..19}; do
    if [ $i -ne 11 ]; then # Skip level 72, it's empty in release builds 
      local from="$((10 + 3 * $i)).wad"
      local to="cutscene_$(getCutsceneId $i).ovl"
      sed -i "s/\"$from\"/\"$to\"/" $wadd/$wj
    fi
  done
}

# Check for wadtoolrust and dumpsxiso
if [ ! -x $dp ]; then
  echo -e "${RED}$dp does not exist or is not executable. Please place a copy of dumpsxiso into this directory and re-run.${NC}"
  echo -e "https://github.com/Lameguy64/mkpsxiso"
  exit 1
elif [ ! -x $wt ]; then
  echo -e "${RED}$wt does not exist or is not executable. Please place a copy of wadtool into this directory and re-run.${NC}"
  echo -e "https://github.com/altro50/wadtool"
  exit 1
elif [ ! -s $cdi ]; then
  echo -e "${RED}A copy of Spyro 3 (NTSC-U rev 0) is needed to run this script. It should be named "$cdi" and placed in the project root directory.${NC}"
  exit 1
fi

# Run dumpsxiso
echo "Running dumpsxiso..."
$dp -x $cdd -s $cdd/$bx $cdi
if [ ! -d $cdd ] || [ ! "$(ls -A $cdd)" ]; then
  echo -e "\n${RED}Running $dp failed. If running from the Docker image, please try again in a new WSL instance.${NC}"
  exit 1
fi

# Run wadtoolrust
echo "Running wadtoolrust..."
$wt unpack $cdd/WAD.WAD $wadd

# sed some lines in the wad.json based on which version of the output you have
echo "Updating build config..."
if grep -q 'name: "Spyro: Year of the Dragon (NTSC 1.0)"' $wadd/$wj; then
  updateDocumentedJson
else
  updateUndocumentedJson
fi

# Add in the dummy sectors in the final so the diffs are smaller
# This is automatically done on dumpsxiso v2.20. If using an earlier version you may want to uncomment the following line before running:
# sed -i '/source="3MN_BLNK.DAT"/a \ \ \ \ \ \ \ \ \ \ \ \ <dummy sectors="150"/>' $cdd/$bx

# Finish
echo -e "${GRN}Preparation complete. Note that you may want to manually confirm that SPEECH.STR is at LBA 90000 in $cdd/$bx before running the build script.${NC}"

# There might be a way of doing this with mkpsxiso, but I don't know how yet
