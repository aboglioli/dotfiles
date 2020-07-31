#!/bin/sh

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
