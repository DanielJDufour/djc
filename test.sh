#!/bin/sh -e

echo "starting to test djc"

dirpath=$(dirname "$0")

echo "removing old database"

rm -f $dirpath/test/mysite/db.sqlite3

pipenv run ./djc makemigrations

pipenv run ./djc migrate

pipenv run ./djc create-user --username="daniel" --email="example@gmail.com" --password="password" --debug="true"
pipenv run ./djc create-user --username="daniel" --email="example@gmail.com" --password="password" --debug="true" --safe="true"

pipenv run ./djc run --filepath test/exc_test.py

pipenv run ./djc collecstatic
