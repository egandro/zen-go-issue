IMAGE?=golang:1.20.7-bullseye
TARGET_IMAGE=example.com
TARGET_NAME=example.com

.PHONY: package
package:
	docker pull $(IMAGE)
	DOCKER_BUILDKIT=1 docker build --build-arg "IMAGE=$(IMAGE)" \
		--tag $(TARGET_IMAGE):latest .
	@echo created $(TARGET_IMAGE):latest

.PHONY: run-test
run-test: package
	docker run --rm -it --name $(TARGET_NAME) $(TARGET_IMAGE):latest /bin/bash -c 'cd /src && ./test.sh'

.PHONY: run-build
run-build: package
	docker run --rm -it --name $(TARGET_NAME) $(TARGET_IMAGE):latest /bin/bash -c 'cd /src && ./build.sh'

