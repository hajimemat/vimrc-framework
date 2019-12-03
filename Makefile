.PHONY: ${HOME}/.config/nvim/init.vim ${HOME}/.vimrc

all: ${HOME}/.config/nvim/init.vim ${HOME}/.vimrc ${HOME}/.vimrc.local

${HOME}/.config/nvim:
	mkdir -p $@
${HOME}/.config/nvim/init.vim: ${HOME}/.config/nvim
	ln -sf $(realpath nvim.init) $@
${HOME}/.vimrc:
	ln -sf $(realpath vimrc) $@
${HOME}/.vimrc.local
	cp -v $(realpath vimrc.local.dist) $@
