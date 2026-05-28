#!/usr/bin/env bash

confirm_proceed() {
    printf "\033[1;34mIs this cosmwasm branch exactly the one you want to proceed with: \033[0m"
    (cd ../cosmwasm && git status -s -b)
    read -r -p "Proceed? [Y/n] " answer
    [[ "$answer" =~ ^[Y]$ ]]
}
