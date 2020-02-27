## Flask Server Example

### HOW TO RUN THIS PROJECT
```shell script
make all
```

### python package manage tool setup
- [PIPENV](https://pipenv.kennethreitz.org/en/latest/)
#### For Mac
```shell script
brew install pipenv
```

### install dependence
```shell script
pipenv install flask Flask-SQLAlchemy flask-bcrypt flask-restplus Flask-Migrate pyjwt Flask-Script flask_testing
```
> check out werkzeug = "~=0.16.1"

### migration database
```shell script
python manage.py db init # first db setting
python manage.py db migrate --message 'migrate message'
python manage.py db upgrade
```

[referance](https://www.freecodecamp.org/news/structuring-a-flask-restplus-web-service-for-production-builds-c2ec676de563/)