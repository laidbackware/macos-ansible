#!/bin/bash

brew install 1password-cli python

PYTHON_VERSION=$python3 --version | tr -d 'Python ' | cut -d. -f 1-2)
grep -qF '/opt/homebrew/opt/python' ~/.zshenv || echo "export PATH=\${PATH}:/opt/homebrew/opt/python@${PYTHON_VERSION}/libexec/bin" >> ~/.zshenv

echo -e "\nInstalling Ansible"
python3 -m pip install --user ansible

echo -e "\nChecking of 1P vault is unlocked. If prompted for login methed, follow instructions in README.md\n\n"
op vault list