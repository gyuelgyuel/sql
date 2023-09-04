## manage.py 명령 추가하는 방법
1. 명령에 사용되는 model이 있는 app의 folder에 `management` folder 생성
2. `management`에 `commands` folder 생성
3. `commands`에 `<command_name.py>`를 만들어 `Command(BaseCommand)` class안에 `handle` 함수를 만들어 그 안에 실행할 명령 코딩

## ORM 실행방법
1. `pip install django-extensions`로 `django-extensions`을 설치 후, `<project_name>/settings.py`의 `Installed_App`에 추가
2. `pip install ipython` 설치
3. `python manage.py shell_plus --ipython` 을 통해 ORM 실행 가능