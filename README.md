# Flask RESTful Gunicorn Starter

A Flask RESTful Gunicorn Starter dockerized using Python 3.8. Makefile and linting configuration (using Flake8) are included.

## Instructions

### Basic usage

To update and start the container:

```
$ make pull
$ make up
```

After executing the previous commands the API is exposed on http://localhost:8000. 

To stop the container:

```
$ make stop
```

To build the container:

```
$ make build
```

To remove the container:

```
$ make rm
```

To start container in detached mode:

```
$ make upd
```

Run linting using flake8 

```
$ make lint
```

Access to container´s bash

```
$ make bash
```
