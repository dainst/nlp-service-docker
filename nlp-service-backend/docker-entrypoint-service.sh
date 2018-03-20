#!/usr/bin/env bash

# TODO: Remove components root, once fully migrated to worker container
export PYTHONPATH="${NLP_COMPONENTS_ROOT}:${NLP_SERVICE_ROOT}"

python3 ${NLP_SERVICE_ROOT}/main.py