# plotly-dash-boilerplate

This repository contains a boilerplate for Plotly Dash app in Docker container with the following setup:

- Using Debian Slim Docker image (read more [here](https://pythonspeed.com/articles/base-image-python-docker-images/))
- Using poetry as package and environment manager for Python project
- Using latest Dash, NumPy and pandas version on Python 3.9



## Using Python

### Run
```sh
poetry install
poetry run python ./app.py
```

## Using Docker

Use gunicorn to properly containerize a Dash app, as explained in the documentation [here](https://dash.plotly.com/deployment). A step-by-step explanation is available [here](https://towardsdatascience.com/dockerize-your-dash-app-1e155dd1cea3)

The boilerplate uses the following entrypoint in the Dockerfile:
```sh
CMD gunicorn -b 0.0.0.0:80 app:app
```

`app:app` refers to `app.py` in the root of the repository, and the `app` Dash.server object within that file.




### Build and run

```sh
poetry export -f requirements.txt --output requirements.txt --without-hashes
docker build -t plotly-dash-boilerplate .
docker run -p 8080:80 --rm plotly-dash-boilerplate
```

### Access the page

Go to `http://localhost:8080` in browser.

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

- [Deploying Dash to Azure app service](https://www.phillipsj.net/posts/deploying-dash-to-azure-app-service)
- [Deploying Dash apps on Azure](https://resonance-analytics.com/blog/deploying-dash-apps-on-azure)
- [Azure Deployment models](https://stackify.com/azure-deployment-models/)

NB: when deploying a Python app as code, you need to have a `app.py` or `application.py` in the root of your repository.