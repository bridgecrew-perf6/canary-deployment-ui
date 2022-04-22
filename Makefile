IMAGE=blue-green-ui

build:
	docker build . --tag ${IMAGE}:$(version) --build-arg VERSION=$(version)

run:
	docker run -p 8080:8080 ${IMAGE}:$(version)
