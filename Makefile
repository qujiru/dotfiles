# Makefile 
# "dotfiles"

DOTPATH		:= $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
CANDIDATES	:= $(wildcard .??*)
EXCLUSIONS	:= .DS_Store .git 
DOTFILES 	:= $(filter-out $(EXCLUSIONS), $(CANDIDATES))

all: install

deploy:
	@echo '==> Start to deploy dotfiles to home directory.'
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)

update:
	git pull origin master

install: update deploy
	@exec $$SHELL

clean:
	@echo 'Removing dotfiles in your home directory.'
	@-$(foreach val, $(DOTFILES), rm -vrf $(HOME)/$(val);)
	-rm -rf $(DOTPATH)
