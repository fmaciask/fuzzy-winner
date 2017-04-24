$(warning A top-level warning)

SITE_NAME ?= $(SITE)
GIT_BRANCH ?= master


.PHONY: init restart provision

init: provision configure
restart: 
	@ rm dst/info.yml
provision:
	@ if [ ! -d "$(SITE_NAME)"/ ]; then mkdir "$(SITE_NAME)";fi
	@ cp info.yml "$(SITE_NAME)"/

configure:
	@ echo "My branch is $(GIT_BRANCH)" > "$(SITE_NAME)"/info.yml
