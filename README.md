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

### Running Server

#### Using uwsgi

```shell script
 pipenv install uwsgi
```
```text
uwsgi \
--http :(port) \  # 원래 uwsgi는 http요청을 잘 받지 않고 이는 웹서버가 많이하는데, 임의로 받도록 설정/ 어떤 port에서 받을지
--home (virtualenv경로) \  # home은 python home, 현재 python의 virtualenv를 어디를 쓰고 있는가
--chdir <django프로젝트 경로> \  # uwsgi가 실행하는 어플리케이션이 존재하는 프로젝트 경로
-w <설정 패키지명>.wsgi   # wsgi모듈로, 어플리케이션과 wsgi을 연결하는 중간 모듈을 설정
```
```shell script
# uwsgi \
# --http :5000 \
# --home /Users/hakuna/.local/share/virtualenvs/flask-server-example-Bvmie_2t \
# -w wsgi --callable app
```