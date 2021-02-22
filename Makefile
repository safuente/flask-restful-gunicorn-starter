DOCKER_COMPOSE := $(shell which docker-compose)
DOCKER := $(shell which docker)

# Start container
up:
	$(DOCKER_COMPOSE) up

# Start container (detached mode)
upd:
	$(DOCKER_COMPOSE) up -d

# Down container
down:
	$(DOCKER_COMPOSE) down

# Stop container
stop:
	$(DOCKER_COMPOSE) stop

# Build container
build:
	$(DOCKER_COMPOSE) build

# Delete container
rm:
	$(DOCKER_COMPOSE) rm

# Pull docker image
pull:
	$(DOCKER_COMPOSE) pull

# Run flake8 linting
lint:
	$(DOCKER_COMPOSE) run --rm app flake8

# Access to container´s bash
bash:
	$(DOCKER) exec -it app bash
