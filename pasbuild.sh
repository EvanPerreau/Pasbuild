#Created by Evan Perreau https://dev-boost.fr
#!/bin/bash
red_color="\e[31m"
blue_color="\e[36m"
green_color="\e[32m"
reset_color="\e[0m"

if [ $# -eq 0 ]; then
  echo -e "${red_color}Usage: $0 <file_name>${reset_color}"
  exit 1
fi

pascal_file=$1

find ${pascal_file}.pas > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo -e "${blue_color}Build of $1.pas is running...${reset_color}"
else
  echo -e "${red_color}${pascal_file}.pas is not found error!${reset_color}"
  exit 1
fi

echo -e "${blue_color}Indexing of pascal dependencies...${reset_color}"

find_lib_error=$(find ./lib -type f -name '*.pas' -exec dirname {} \; | sort -u > pasbuild.lock 2>&1)
if [ $? -eq 0 ]; then
  echo -e "${green_color}Dependencies successfully indexed.${reset_color}"
else
  echo -e "${red_color}Fatal indexing error with code: $?"
  echo -e "Error: "
  echo -e "${find_lib_error}"
  echo -e "Build aborted!${reset_color}"
  exit 1
fi

args=()

while IFS= read -r line; do
  args+=("-Fu${line}")
done < pasbuild.lock

echo -e "${blue_color}We will now let fpc do the work :)${reset_color}"
fpc_error=$(fpc ${args[@]} ${pascal_file} 2>&1)
if [ $? -eq 0 ]; then
  echo -e "${green_color}${pascal_file}.pas has been successfully built."
  echo -e "Bash script created by Evan Perreau https://dev-boost.fr${reset_color}"
else
  echo -e "${red_color}Fatal compiling error with code: $?"
  echo -e "Error: "
  echo -e "${fpc_error}"
  echo -e "Build aborted!${reset_color}"
  exit 1
fi