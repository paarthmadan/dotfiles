.PHONY: brew vim zsh tmux
brew:
	@sh $(CURDIR)/brew/brew.sh
	-@brew bundle --file=$(CURDIR)/brew/Brewfile --verbose
vim:
	@ln -fsv $(CURDIR)/vim/vimrc ~/.vim
	@vim +PlugInstall +qall
zsh:
	@sh $(CURDIR)/zsh/zsh.sh
	@ln -fsv $(CURDIR)/zsh/zshrc ~/.zshrc
tmux:
	@ln -fsv $(CURDIR)/tmux/tmux.conf ~/.tmux.conf
