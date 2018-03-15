#!/bin/bash

if [[ "${PY_VER}" =~ 3 ]]
then
    2to3 -w -n setup.py
    2to3 -w -n lib/*
fi
$PYTHON setup.py install --record=record.txt
