#!/usr/bin/env bash

source /etc/os-release

dependencies=("docker" "curl")
dependencies_download_dir="/usr/bin"
download_url1=
# 📂 Check for dependencies
echo "📂 Checking for dependencies..."


if [ -f /etc/os-release ]; then
  source /etc/os-release
  os_name-b=   echo "Operating System: $PRETTY_NAME"
elif [ -f /etc/lsb-release ]; then
  source /etc/lsb-release
  os_name-a= echo "Operating System: $(lsb_release -a | grep Description | awk '{print $2, $3, $4, $5}')"
else
  echo "Could not determine the operating system."
fi


for file in "${dependencies[@]}"; do
  if [[ -f "/usr/bin/$file" ]]; then
    echo "✅ Found: $file"
  else
    echo "❌ Missing: $file"
    echo "⬇ Downloading $file to $dependencies_download_dir"
    if operatings
  fi
done