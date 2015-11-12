#!/bin/bash
COFFEELINT="$(find "$(npm bin)" -executable -name 'coffeelint' | head -n1)"
CONFIG="$(find node_modules -type d -name 'coffeelint-bundle' | head -n1)/coffeelint.json"

"${COFFEELINT}" -c -f "${CONFIG}" ${@}
