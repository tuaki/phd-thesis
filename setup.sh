#!/bin/bash

# Latex is unbeliavably fucked and just can't handle even the simplest of use cases.

mkdir -p tmp/chapters

if [ -d papers ]; then
	find papers -mindepth 1 -maxdepth 1 -type d | while IFS= read -r dir; do
		mkdir -p "tmp/papers/$(basename "$dir")"
	done
fi
