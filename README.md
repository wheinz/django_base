## An opinionated Django starter

* Gunicorn for server in production
* Docker compose configuration with nginx
* Python-dotenv for environmental variables
* Separate db folder for easily storing sqlite.db in docker volume
* Keygen.py file for generating secure codes
* App called "core" already installed with basic index view
* Base.html template with link to main.css stylesheet
* STATICFILES_DIRS and STATIC_ROOT variables added
* CSRF_TRUSTED_ORIGINS variable added
* TIMEZONE set to Europe/Amsterdam

Steps to take to use as starter:
1. Clone project
2. Rename folders
3. In settings.py, update ROOT_URLCONF, WSGI_APPLICATION
4. in WSGI/ASGI.py change to PROJECTNAME.settings
5. in manage.py change to PROJECTNAME.settings
6. Change nginx conf files and update APP-URLs