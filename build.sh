#!/usr/bin/env bash
set -o errexit

pip install -r requirements.txt
/opt/render/project/src/.venv/bin/pip install gunicorn
python manage.py collectstatic --no-input
python manage.py migrate