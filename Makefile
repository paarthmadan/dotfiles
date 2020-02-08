.PHONY: brew vim zsh tmux git
brew:
	@sh $(CURDIR)/brew/brew.sh
	-@brew bundle --file=$(CURDIR)/brew/Brewfile --verbose
vim:
	@ln -fsv $(CURDIR)/vim ~/.vim
	@vim +PlugInstall +qall
zsh:
	@sh $(CURDIR)/zsh/zsh.sh
	@ln -fsv $(CURDIR)/zsh/zshrc ~/.zshrc
	@source ~/.zshrc
tmux:
	@ln -fsv $(CURDIR)/tmux/tmux.conf ~/.tmux.conf
git:
	@ln -fsv $(CURDIR)/git/gitignore ~/.gitignore_global
	@git config --global core.excludesfile '~/.gitignore_global'
