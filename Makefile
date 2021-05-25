NODE_VERSION=16
RUBY_VERSION=3.0.1

node-image:
	docker build node/ -t pedro/node-$(NODE_VERSION) --build-arg NODE_VERSION=$(NODE_VERSION)

ruby-image:
	docker build ruby/ -t pedro/ruby-$(RUBY_VERSION) --build-arg RUBY_VERSION=$(RUBY_VERSION)

shell-image:
	docker build shell/ -t pedro/shell-$(BASE_IMAGE) --build-arg BASE_IMAGE=$(BASE_IMAGE)
