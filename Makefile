.DEFAULT: docker
docker:
	docker build -t unbound:1.5.8 .
