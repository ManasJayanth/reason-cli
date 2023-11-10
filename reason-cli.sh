#! /bin/bash

set -e

# shellcheck disable=SC2001
#   2001 complains bash variable substitution could be considered instead of echo/sed pattern
#   3060 complains of missing echo/sed pattern support in POSIX shell
#   We chose to ignore 2001

print_usage () {
    echo ""
    echo "reason-cli"
    echo "--help                          Show this help message"
    echo "install                         Install the project dependencies package.json. Uses esy internally."
    echo "build                           Build the project with instructions in package.json. Uses esy internally."
    echo "repl                            Build the project with instructions in package.json. Uses rtop"
    echo ""
}

case "$1" in
    -h* | --help)
	print_usage;
        exit 0 ;;
    install)
	esy install
	;;
    build)
	esy
	;;
    repl)
	rtop
	;;
    *)
	echo "Unrecognised command: $1"
	;;
esac


