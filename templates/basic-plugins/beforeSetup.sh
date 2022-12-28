#!/bin/sh
if [ "$SERVER_DIR" = "" ]; then
    echo "Failed to determine server base directory"
    exit 1
fi
echo "Deleting 'mods' directory..."
rm -rf "$SERVER_DIR/mods/"
echo "Deleting 'mod' directory..."
rm -rf "$SERVER_DIR/mod/"
echo "Deleting all jar files..."
rm -rf "$SERVER_DIR/*.jar"
echo "Deleting all files in 'plugins'..."
rm -rf "$SERVER_DIR/plugins/*"
echo "Cleanup completed."