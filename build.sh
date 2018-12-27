#!/bin/bash

python3 -m pip install --user --upgrade setuptools wheel
python3 setup.py sdist bdist_wheel

python3 -m pip install --user --upgrade twine
twine upload --repository-url https://pypi.org/legacy/ dist/*
