set-env:
	 [ -f .env ] || cp .env.example .env

test:
	make set-env
	docker-compose -f docker-compose.yml up --abort-on-container-exit

start:
	make set-env
	docker-compose -f docker-compose.yml -f docker-compose.override.yml up --build

build:
	make set-env
	docker-compose -f docker-compose.yml build app

push:
	make set-env
	docker-compose -f docker-compose.yml push app
