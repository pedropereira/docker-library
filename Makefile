RUBY_VERSION=2.6.6
BASE_IMAGE=ruby-$(RUBY_VERSION)

ruby-image:
	docker build ruby/ -t pedro/ruby-$(RUBY_VERSION) --build-arg RUBY_VERSION=$(RUBY_VERSION)

shell-image:
	docker build shell/ -t pedro/shell-$(BASE_IMAGE) --build-arg BASE_IMAGE=pedro/$(BASE_IMAGE)
