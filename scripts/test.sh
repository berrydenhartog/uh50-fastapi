#!/usr/bin/env bash

set -e
set -x

# Check README.md is up to date
pytest
coverage run -m pytest
coverage report --show-missing
coverage xml