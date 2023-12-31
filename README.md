# Custom User Profile

[![Build](https://github.com/Anjaan-g/custom-user-profile/actions/workflows/python-publish.yml/badge.svg)](https://github.com/Anjaan-g/custom-user-profile/actions/workflows/python-publish.yml)

Custom User Profile is a django app to create custom user model with the ability to register
new users with custom forms and rich stylings.

Detailed documentation is in the 'docs' directory.

## Quick Start

1. Add 'users' to your INSTALLED_APPS settings. This project uses django-crispy-forms and crispy-bootstrap5 packages which also needs to be added in the installed apps.

```python
INSTALLED_APPS = [
    ...,
    'users',
    'crispy_forms',
    'crispy_bootstrap5',
]
```

2. Modify the AUTH_USER_MODEL setting in your settings.

```python
AUTH_USER_MODEL = 'users.CustomUser'
```

3. Include the users URLconf in your project urls.py like this:

```python
urlpatterns=[
    ...,
    path('users/', include('users.urls')),
]
```

4. Run `python manage.py migrate` to create the users models.
5. Start the development server and visit `http://127.0.0.1:8000/admin/` to create a user. (You'll need the admin app enabled)
6. Visit http://127.0.0.1:8000/users/register to register new users.
