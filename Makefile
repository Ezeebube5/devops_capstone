build:
	docker build -t ezeebube5/static_site:blue .

upload:
	sh upload_docker.sh

lint:
	#hadolint Dockerfile
	docker run --rm -i hadolint/hadolint < Dockerfile
	pylint app.py
	tidy -q -e templates/index.html

all: lint build
