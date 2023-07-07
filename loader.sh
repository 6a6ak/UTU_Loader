#!/bin/bash

# Ask for the URL of the zip file to download
echo "Please enter the URL of the zip file:"
read url

# Ask for the name to save the zip file as
echo "Please enter the name to save the downloaded zip file as:"
read filename

# Download the file
wget "$url" -O "$filename"

# Alternatively, you can use curl
# curl -o "$filename" "$url"

# Ask for the password for the zip file
echo "Please enter the password for the zip file:"
read -s password

# Extract the zip file
unzip -P "$password" "$filename"


# comes from config file
chmod +x "$loader"
./"$loader"
