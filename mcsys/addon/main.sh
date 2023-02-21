#!/bin/bash
# This is the main file

install() {
echo "Welcome to this example addon"
echo "Please select one of these directorys:"
find . -name main.sh | nl
{ echo -n -e "Please type a number and hit enter: "; read -r DSELECT; }
DIRECTORY=$(find . -name main.sh | nl | head -n $DSELECT | tail -n 1 | rev | cut -d "/" -f2- | rev)
echo "You selected: $DIRECTORY"

}
