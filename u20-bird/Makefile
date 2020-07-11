REPOSITORY ?= u20-bird
VERSION    ?= 1
BUILD_ID   ?= 0

REGISTRY   ?= knet
IMAGE      ?= $(REGISTRY)/$(REPOSITORY):$(VERSION)-$(BUILD_ID)

BUILD_OPTIONS = -t $(IMAGE)

default: build

build:
	docker build $(BUILD_OPTIONS) .
	docker tag $(IMAGE) $(REGISTRY)/$(REPOSITORY):latest

push:
	docker push $(IMAGE)
	docker push $(REGISTRY)/$(REPOSITORY):latest

