HOME_DIR := ~
VIM_DIR := $(HOME_DIR)/.vim
BUNDLE_DIR := $(VIM_DIR)/bundle
INCLUDE := "source ~/.vim/defaults.vim"

#----------------------------------------------------
# Reads the github repos for the pathogen bundles to
# be installed from bundles.txt
#----------------------------------------------------
BUNDLES := $(shell paste -d\  -s bundles.txt)

all: install_pathogen $(BUNDLES) post_install

#----------------------------------------------------
# Command to install pathogen
#----------------------------------------------------
install_pathogen:
	mkdir -p autoload bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#----------------------------------------------------
# Generic installer for pathogen modules
#----------------------------------------------------
$(BUNDLES):
	cd bundle && echo $@ | cut -f2 -d/ | xargs \
	test -d || git clone git://github.com/$@.git

#----------------------------------------------------
# Add post-install instructions here
#----------------------------------------------------
post_install:
	## vim-fugitive post install setup
	cd bundle && vim -u NONE -c "helptags vim-fugitive/doc" -c q

	## add include statement to regular .vimrc file
	grep -Fxq $(INCLUDE) ~/.vimrc || echo "">> ~/.vimrc
	grep -Fxq $(INCLUDE) ~/.vimrc || echo $(INCLUDE) >> ~/.vimrc
