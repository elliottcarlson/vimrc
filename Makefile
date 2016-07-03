HOME_DIR := ~
VIM_DIR := $(HOME_DIR)/.vim
BUNDLE_DIR := $(VIM_DIR)/bundle

#----------------------------------------------------
# Reads the github repos for the pathogen bundles to
# be installed from bundles.txt
#----------------------------------------------------
BUNDLES := $(shell paste -d\  -s bundles.txt)

all: copy install_pathogen $(BUNDLES) post_install

copy:
	test -f $(HOME_DIR)/.vimrc || cp -f .vimrc $(HOME_DIR)

#----------------------------------------------------
# Command to install pathogen
#----------------------------------------------------
install_pathogen:
	mkdir -p $(VIM_DIR)/autoload $(BUNDLE_DIR) && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#----------------------------------------------------
# Generic installer for pathogen modules
#----------------------------------------------------
$(BUNDLES):
	cd $(BUNDLE_DIR) && echo $@ | cut -f2 -d/ | xargs \
  test -d || git clone git://github.com/$@.git

#----------------------------------------------------
# Add post-install instructions here
#----------------------------------------------------
post_install:
	## vim-fugitive post install setup
	cd $(BUNDLE_DIR) && vim -u NONE -c "helptags vim-fugitive/doc" -c q


