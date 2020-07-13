# djc
:computer: Command Line Interface for Django with Nifty Scripts

# usage
Install djc in the same environment as your Django project

## create a new user
Setting safe to true, makes it so the command doesn't exit with an error code if the user already exists
```bash
djc create-user --username="daniel" --email="example@gmail.com" --password="password" --debug="true" --safe="true"
```
You can also run `djc create-superuser` which takes the same flags and arguments.

## run a file within the Django environment
```bash
djc run --filepath seed.py
```
or
```bash
djc run -f seed.py
```

## makemigrations
```bash
djc makemigrations
```

## run migrations
```bash
djc migrate
```

## collect static files
This command automatically answers any questions with yes.
```bash
djc collectstatic
```