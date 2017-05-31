# Define Phony Targets
# (i.e. targets which don't create files)
.PHONY: vim
.PHONY: filezilla
.PHONY: git
.PHONY: bash
.PHONY: remmina

# Be quiet by default; define VERBOSE to override this behavior
ifndef VERBOSE
.SILENT:
endif

install: vim filezilla git bash remmina
	rm -rf ~/Pictures; true
	ln -sfT /home/russa/Sync/Media/wallpaper /home/russa/Pictures
	rm -rf ~/Music; true
	ln -sfT /home/russa/Sync/Media/music /home/russa/Music

vim:
	curl -s -fLo $(PWD)/vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	ln -sfT $(PWD)/vim/vimrc ~/.vimrc
	ln -sfT $(PWD)/vim ~/.vim

filezilla:
	mkdir -p ~/.filezilla && ln -sf $(PWD)/filezilla/sitemanager.xml ~/.filezilla/sitemanager.xml

git:
	ln -sfT $(PWD)/git/gitconfig ~/.gitconfig

bash:
	ln -sfT $(PWD)/bash/bash_aliases ~/.bash_aliases
	ln -sfT $(PWD)/bash/bashrc ~/.bashrc

remmina:
	rm -rf ~/.remmina
	cp -r $(PWD)/remmina ~/.remmina
