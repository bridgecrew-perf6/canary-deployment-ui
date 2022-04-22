IMAGE=blue-green-ui

build:
	docker build . --tag ${IMAGE}

run:
	docker run -p 8080:8080 ${IMAGE}