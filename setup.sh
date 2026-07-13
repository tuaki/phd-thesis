#!/bin/bash

# Latex is unbeliavably fucked and just can't handle even the simplest of use cases.
# See .latexmkrc for details. This script is a workaround to make it work.

aux_dir="$1"

mkdir -p "$aux_dir/chapters"

if [ -d papers ]; then
	find papers -mindepth 1 -maxdepth 1 -type d | while IFS= read -r dir; do
		mkdir -p "$aux_dir/papers/$(basename "$dir")"
	done
fi
