#!/usr/bin/env bash

set -e
set -x

mypy uh50
flake8 uh50 tests
pylint uh50 tests
black uh50 tests --check
isort uh50 tests --check-only