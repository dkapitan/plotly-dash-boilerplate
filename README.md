# plotly-dash-boilerplate

This repository contains a boilerplate for Plotly Dash app in Docker container with the following setup:

- Using Debian Slim Docker image (read more [here](https://pythonspeed.com/articles/base-image-python-docker-images/))
- Using poetry as package and environment manager for Python project
  - To generate requirements.txt run `poetry export -f requirements.txt --output requirements.txt --without-hashes`
- Using latest Dash, NumPy and pandas version on Python 3.9
