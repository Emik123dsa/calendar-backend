default: all

.DEFAULT:
	cd docker && $(MAKE) $@

install:
	cd docker && $(MAKE) $@

all:
	docker-compose -f docker-compose.yml down --remove-orphans --volumes
	docker-compose -f docker-compose.yml up -d --force-recreate

.PHONY: install
