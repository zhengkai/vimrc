#!/bin/bash

vim -E +PlugUpgrade +qall >/dev/null 2>&1

vim -E +PlugInstall +qall >/dev/null 2>&1

vim -E +PlugUpdate +qall >/dev/null 2>&1
