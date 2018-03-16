#!/usr/bin/env bash

export PYTHONPATH="${NLP_COMPONENTS_ROOT}:${NLP_SERVICE_ROOT}"

celery worker -A main.celery --loglevel=info > celery.log 2>&1 &

python3 ${NLP_SERVICE_ROOT}/main.py