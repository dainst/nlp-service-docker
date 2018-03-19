#!/usr/bin/env bash

export PYTHONPATH="${NLP_COMPONENTS_ROOT}:${NLP_SERVICE_ROOT}"
# celery -A celery_tasks worker --loglevel=info # TODO: Start without auto-restart in production setting
watchmedo auto-restart -- celery -A celery_tasks worker --loglevel=info