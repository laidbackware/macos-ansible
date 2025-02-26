#!/bin/bash

# This expects a secure note called `op-ssh-key-refs` to contain the names of all ssh key secrets
SHELL_SECRETS=$(op item get shell-secrets --fields notesPlain)

echo "$SHELL_SECRETS" > $HOME/.shell_secrets