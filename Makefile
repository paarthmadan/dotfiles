.PHONY: brew
brew:
	@sh $(CURDIR)/brew/brew.sh
	-@brew bundle --file=$(CURDIR)/brew/Brewfile --verbose
