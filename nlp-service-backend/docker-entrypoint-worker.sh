#!/usr/bin/env bash
# TODO: Add environment switch for starting just celery (without watching for file changes) in production setting
# celery -A celery_tasks worker --loglevel=info

watchmedo auto-restart --recursive --patterns="*.py" -- celery -A worker.celery_tasks worker --loglevel=info