#!/usr/bin/env bash

set -e
set -x

autoflake --remove-all-unused-imports --recursive --remove-unused-variables --in-place uh50 tests
black uh50 tests
isort uh50 tests