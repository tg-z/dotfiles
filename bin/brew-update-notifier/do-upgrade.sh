#!/bin/bash

PATH=/usr/local/bin:$PATH

TERMINAL_NOTIFIER="$(command -v terminal-notifier)"
BREW_EXEC="$(command -v brew)"
SCRIPT_DIR="$(dirname "${0}")"
LOG="${SCRIPT_DIR}/log.txt"
DATE="$(date +%Y-%m-%dT%H:%M:%S)"

echo "${DATE} Performing update" >> "${LOG}"

output="$(${BREW_EXEC} upgrade)"

echo "${output}" >> "${LOG}"

"${TERMINAL_NOTIFIER}" -title "Homebrew Upgrade Done" -message "${output}"
