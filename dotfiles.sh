if [[ $2 ]]; then
	comment=$2
else
	comment=$(LC_ALL=us_US.utf8 date)
fi

if [[ $1 == "-s" ]]; then
	cp -r ~/.i3/* ~/dotfiles/i3/
	#cp ~/.zshrc ~/dotfiles/zshrc
	cp ~/.vimrc ~/dotfiles/vimrc
	cd ~/dotfiles
	git add *
	git commit -m "$comment"
	git push origin master
fi
if [[ $1 == "-d" ]]; then
	if ! [ -d ~/dotfiles ]; then
	mkdir ~/dotfiles
	git clone https://github.com/FELIXakaFX/dotfiles.git ~/dotfiles
	else
	cd ~/dotfiles && git pull
	fi
	rm -r ~/.i3.backup
	mv -f ~/.i3 ~/.i3.backup
	mkdir ~/.i3
	cp -r ~/dotfiles/i3/* ~/.i3/
	#cp ~/dotfiles/zshrc ~/.zshrc
	mv -f ~/.vimrc ~/.vimrc.backup
	cp ~/dotfiles/vimrc ~/.vimrc
fi
