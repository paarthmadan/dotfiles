.PHONY: brew vim zsh tmux git

brew:
	@sh $(CURDIR)/brew/install.sh
	-@brew bundle --file=$(CURDIR)/brew/Brewfile --verbose
	@sh $(CURDIR)/brew/post-setup.sh

vim:
	@ln -fsv $(CURDIR)/vim ~/.vim
	@vim +PlugInstall +qall

zsh:
	@zsh $(CURDIR)/zsh/zsh.sh
	@ln -fsv $(CURDIR)/zsh/zshrc ~/.zshrc
	@git clone https://github.com/sindresorhus/pure.git $$HOME/.zsh/pure
	@source ~/.zshrc

tmux:
	@ln -fsv $(CURDIR)/tmux/tmux.conf ~/.tmux.conf

git:
	@ln -fsv $(CURDIR)/git/gitignore ~/.gitignore_global
	@git config --global core.excludesfile '~/.gitignore_global'
	@sh $(CURDIR)/git/git.sh
