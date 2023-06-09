#!/bin/bash

echo "Enter the file extension:"
read extension

echo "Enter the destination folder path:"
read destination_path

if [ ! -d "$destination_path" ]
then
mkdir "$destination_path"
fi

mv -v *."$extension" "$destination_path"

exit 0