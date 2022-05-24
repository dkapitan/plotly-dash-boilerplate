# plotly-dash-boilerplate

This repository contains a boilerplate for Plotly Dash app in Docker container with the following setup:

- Using Debian Slim Docker image (read more [here](https://pythonspeed.com/articles/base-image-python-docker-images/))
- Using poetry as package and environment manager for Python project
  - To generate requirements.txt run `poetry export -f requirements.txt --output requirements.txt --without-hashes`
- Using latest Dash, NumPy and pandas version on Python 3.9



## Using Python

### Run
```sh
poetry install
poetry run python ./dash_on_azure/app.py
```

## Using Docker

### Build and run

```sh
docker build -t dash .

docker run -p 8050:8050 \
-v "$(pwd)"/app:/app \
--rm dash
```

### Access the page

Go to `http://localhost:8050` in browser.

### Switch debug mode in Dockerfile

```dockerfile
ENV DASH_DEBUG_MODE True # False
```

### Development

Install the app requirements for development to get better editor support.

```sh
poetry install
```

## Deploying on Azure

As a starting point, read up on the following examples:

- [Deploying Dash on Azure](https://www.phillipsj.net/posts/deploying-dash-to-azure-app-service)
- [Azure Deployment models](https://stackify.com/azure-deployment-models/)