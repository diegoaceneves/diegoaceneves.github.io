# Get the latest tag
TAG=$(shell git describe --tags --abbrev=0)
GIT_COMMIT=$(shell git log -1 --format=%h)
HUGO_VERSION=0.95.0
HUGO_IMAGE=klakegg/hugo

# HELP
# This will output the help for each task
# thanks to https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

hugo-new-site: ## New hugo site - Create a new site in this path
	docker container run --rm -v $$PWD:/app -w /app $(HUGO_IMAGE):$(HUGO_VERSION) new site . --force

hugo-new-theme: ## New hugo theme - Install a new hugo theme: use THEMEURL=https://github.com/gituser/hugotheme.git THEMENAME=tema
	git submodule add $(THEMEURL) themes/$(THEMENAME)
	echo theme = \"$(THEMENAME)\" >> config.toml

hugo-new-post: ## New hugo post - Create a new post: use POST=post-name.md
	docker container run --rm -v $$PWD:/app -w /app $(HUGO_IMAGE):$(HUGO_VERSION) new posts/$(POST)

hugo-new-page: ## New hugo page - Create a new page: use PAGE=page-name.md
	docker container run --rm -v $$PWD:/app -w /app $(HUGO_IMAGE):$(HUGO_VERSION) new $(PAGE)

hugo-server: ## Start hugo server
	docker container run --rm -v $$PWD:/app -w /app -p 1313:1313 $(HUGO_IMAGE):$(HUGO_VERSION) server -D

hugo-build: ## Build hugo site
	docker container run --rm -v $$PWD:/app -w /app $(HUGO_IMAGE):$(HUGO_VERSION) -D

hugo-sh: ## Access hugo shell
	docker container run -ti --rm -v $$PWD:/app -w /app --entrypoint "" klakegg/hugo:0.95.0 sh	

hugo-fix-perm: ## Fix permissions
	sudo chown $$USER:$$USER . -R	