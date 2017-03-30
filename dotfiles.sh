if [[ $1 == *"a"* ]]; then
	auto=0
fi
if [[ $2 ]]; then
	comment=$2
else
	comment=$(LC_ALL=us_US.utf8 date)
fi

if [[ $1 == *"s"* ]]; then
	if ! [ -z $auto ] || $(read -q "?Save i3 [y/N] "); then
		cp -r ~/.i3/* ~/dotfiles/i3/
	fi
	if ! [ -z $auto ] || $(read -q "?Save zshrc [y/N] "); then
		cp ~/.zshrc ~/dotfiles/zshrc
	fi
	if ! [ -z $auto ] || $(read -q "?Save vimrc [y/N] "); then
		cp ~/.vimrc ~/dotfiles/vimrc
	fi
	git -C ~/dotfiles add *
	git -C ~/dotfiles commit -m "$comment"
	git -C ~/dotfiles push origin master
fi
if [[ $1 == *"-d"* ]]; then
	if ! [ -d ~/dotfiles ]; then
		mkdir ~/dotfiles
		git -C ~/dotfiles pull
	else
		git -C ~/dotfiles pull
	fi
	if ! [ -z $auto ] || $(read -q "?Save i3 [y/N] "); then
		mv -f ~/.i3 ~/dotfiles/i3.backup && cp -r ~/dotfiles/i3 ~/.i3
	fi
	if ! [ -z $auto ] || $(read -q "?Save zshrc [y/N] "); then
		mv -f ~/.zshrc ~/dotfiles/zshrc.backup && cp ~/dotfiles/zshrc ~/.zshrc
	fi
	if ! [ -z $auto ] || $(read -q "?Save vimrc [y/N] "); then
		mv -f ~/.vimrc ~/dotfiles/vimrc.backup && cp ~/dotfiles/vimrc ~/.vimrc
	fi
fi
