build:
	docker build -t donko/myapp:green .

upload:
	sh upload_docker.sh

lint:
	#hadolint Dockerfile
	docker run --rm -i hadolint/hadolint < Dockerfile
	pylint app.py

all: lint build
