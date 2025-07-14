#!/bin/bash
# Always run from this directory, no matter where the user is
python3 "$(dirname "$0")/W3C-Validator/w3c_validator.py" "$@"