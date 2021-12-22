NODE_VERSION=17.1.0
RUBY_VERSION=3.0.2

node-image:
	docker build node/ -t pedro/node-$(NODE_VERSION) --build-arg NODE_VERSION=$(NODE_VERSION)

ruby-image:
	docker build ruby/ -t pedro/ruby-$(RUBY_VERSION) --build-arg RUBY_VERSION=$(RUBY_VERSION)

shell-image:
	docker build shell/ -t pedro/shell-$(BASE_IMAGE) --build-arg BASE_IMAGE=$(BASE_IMAGE)
