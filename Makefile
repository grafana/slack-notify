DOCKER_REGISTRY ?= "grafana"

.PHONY: build
build:
	docker build -t $(DOCKER_REGISTRY)/slack-notify:latest .

.PHONY: docker-push
push: build
	docker push $(DOCKER_REGISTRY)/slack-notify



