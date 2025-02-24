#!/bin/bash

if ! command -v brew &> /dev/null; then
  echo -e "\nInstalling homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo >> /Users/$USER/.zprofile
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
  echo 'export PATH=${PATH}:/opt/homebrew/bin/' >> ~/.zshenv
fi

set -euxo pipefail

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"