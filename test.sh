#!/bin/sh -e

echo "starting to test djc"

dirpath=$(dirname "$0")

echo "removing old database"

rm -f $dirpath/test/mysite/db.sqlite3

./djc makemigrations
./djc migrate
./djc create-user --username="daniel" --email="example@gmail.com" --password="password" --debug="true"
./djc run --filepath test/exc_test.py

