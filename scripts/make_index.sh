#!/bin/bash -
#===============================================================================
#
#          FILE: make_index.sh
#
#         USAGE: ./make_index.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Aaron Zhang (AZ), zhangbo1882@gmail.com
#  ORGANIZATION: 
#       CREATED: 2018/02/03 11时17分13秒
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error
function helpUsage() {
	echo "Usage: $0 c | go | py | sh"
}
if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    helpUsage
    exit 1
fi
if [ $1 == "c" ]; then
	find .  -name "*.c"  > cscope.file
	find .  -name "*.h"  >> cscope.file

	cp cscope.file ctags.file
	
	echo "Begin build tags"
	ctags -L ctags.file --c-kinds=+cdefgmnpstuvx --fields=+niazS --extra=+q
elif [ $1 == "go" ]; then
	find . -name "*.go"  > cscope.file
	cp cscope.file gotags.file
	gotags -L gotags.file > tags
elif [ $1 == "py" ]; then
	find . -name "*.py"  > cscope.file
elif [ $1 == "sh" ]; then
	find . -name "*.sh"  > cscope.file
else
	helpUsage
	exit 1
fi
echo "Language is $1"
echo "Begin build cscope.out"
cscope -cbq -i cscope.file

