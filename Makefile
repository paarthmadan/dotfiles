.PHONY: brew vim
brew:
	@sh $(CURDIR)/brew/brew.sh
	-@brew bundle --file=$(CURDIR)/brew/Brewfile --verbose
vim:
	@ln -fsv $(CURDIR)/vim/vimrc ~/.vim
