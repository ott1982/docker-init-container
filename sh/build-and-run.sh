#!/bin/bash

docker build -t init-container .

docker run --rm init-container