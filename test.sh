#!/bin/sh -e

echo "starting to test djc"

dirpath=$(dirname "$0")

echo "removing old database"

rm -f $dirpath/test/mysite/db.sqlite3

testMigrating() {
    pipenv run ./djc makemigrations
    pipenv run ./djc migrate
}

testCreatingNewUser() {
    pipenv run ./djc create-user --username="daniel" --email="example@gmail.com" --password="password" --debug="true"
}

testCreatingUserThatAlreadyExists() {
    pipenv run ./djc create-user --username="daniel" --email="example@gmail.com" --password="password" --debug="true" --safe="true"
}

testCreatingSuperUser() {
    pipenv run ./djc create-superuser --username="admin" --email="admin@example.org" --password="1028763981623" --debug="true"
}

testCreatingSuperUserThatAlreadyExists() {
    pipenv run ./djc create-superuser --username="admin" --email="admin@example.org" --password="1028763981623" --debug="true" --safe="true"
}

testCreatingUserWithProjectPath() {
    pipenv run ./djc create-user --username="daniel" --email="example@gmail.com" --password="password" --debug="true" --project="$PWD/test/mysite" --safe="true"
}

testRunning() {
    pipenv run ./djc run --filepath test/exc_test.py
}

testCollectingStaticFiles() {
    pipenv run ./djc collecstatic
}

. ./shunit2
