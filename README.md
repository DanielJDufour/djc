# djc
:computer: Command Line Interface for Django with Nifty Scripts

# usage
Install djc in the same environment as your Django project

## create a new user
```bash
djc create-user --username="daniel" --email="example@gmail.com" --password="password" --debug="true"
```

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