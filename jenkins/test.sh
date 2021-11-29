#!/bin/bash


echo "hello test"

# venv created and sourced
python3 -m venv venv
sourve venv /bin/activate


# pip3 install, putest, flask_testing, frontend requirements.txt and backend requirements
pip3 install pytest pytest-cov flask_testing
pip3 install -r frontend/requirements.txt 
pip3 install -r backend/requirements.txt 

# run pytest frontend

python3 -m pytest/frontend \
    --cov=frontend/application \
    --cov-report term-missing \
    --cov-report xml:test_reports/frontend_coverage.xml \
    --junitxml=test_reports/frontend_junit_report.xml

# run pytest backend
python3 -m pytest/backend \
--cov=frontend/application \
    --cov-report term-missing \
    --cov-report xml:test_reports/backend_coverage.xml \
    --junitxml=test_reports/backend_junit_report.xml

#remove venv

deactivate

rm -rf venv
