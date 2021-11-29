#!/bin/bash

echo "hello test"

# venv created and sourced
python3 -m venv venv
sourve venv /bin/activate


# pip3 install, putest, flask_testing, frontend requirements.txt and backend requirements
pip3 install pytest flask_testing
pip3 install -r frontend/requirements.txt 
pip3 install -r backend/requirements.txt 

# run pytest frontend

python3 -m pytest/frontend 

# run pytest backend
python3 -m pytest/backend

#remove venv

deactivate

rm -rf venv