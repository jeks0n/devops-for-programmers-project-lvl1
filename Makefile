test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

start:
	docker-compose -f docker-compose.yml -f docker-compose.override.yml up --build

build:
	docker-compose -f docker-compose.yml build app

push:
	docker-compose -f docker-compose.yml push app
