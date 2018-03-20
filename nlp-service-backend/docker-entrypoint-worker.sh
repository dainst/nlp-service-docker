#!/usr/bin/env bash

export PYTHONPATH="${NLP_COMPONENTS_ROOT}:${NLP_SERVICE_ROOT}"

# TODO: Add switch for start without auto-restart in production setting
# celery -A celery_tasks worker --loglevel=info

# TODO: Maybe also watch nlp_components for changes?
watchmedo auto-restart -- celery -A celery_tasks worker --loglevel=info