JOBS:=$(shell nproc)

.PHONY: start
start:
	./build/xmrig -c config.json

.PHONY: build
build:
	@mkdir -p ./build
	cd ./build && \
		cmake .. && \
		make -j$(JOBS)
