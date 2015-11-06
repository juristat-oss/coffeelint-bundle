#!/bin/bash
COFFEELINT="$(find node_modules -executable -name 'coffeelint' | grep coffeelint-bundle | head -n1)"
CONFIG="$(find node_modules -type d -name 'coffeelint-bundle' | head -n1)/coffeelint.json"

if [[ $COFFEELINT != *"/coffeelint-bundle/"* ]] ; then
	echo "Coffeelint is not installed in the node_modules directory of coffeelint-bundle."
	echo "You probably have it in your package.json. Use npm to uninstall coffeelint from"
	echo "your project, then install coffeelint-bundle again."
	exit 1
fi

"${COFFEELINT}" -c -f "${CONFIG}" ${@}
