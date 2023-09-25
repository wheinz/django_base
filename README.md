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