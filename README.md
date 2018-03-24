# dotfiles

## Setup
```sh
git init --bare $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
```

## Usage
Essentially git
```sh
dotfiles status
dotfiles add .zshrc
dotfiles commit -m "Update .zshrc"
dotfiles push
```

## Bootstrapping new system
```sh
echo ".dotfiles" >> .gitignore
git clone --bare git@github.com:chihimng/dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```

## My Setup
- MacBook Pro 15" 2016
    - macOS High Sierra (10.13.x)
- HHKB Pro 2
- Logitech G502

## Tools I use
### Terminal
- [iTerm2](https://github.com/gnachman/iTerm2): The new default terminal for macOS
    - Tomorrow Night Bright
    - DejaVu Sans Mono, 12pt
- [zsh](http://www.zsh.org)
- [Oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
### Text Editor
- [Atom](https://github.com/atom/atom): RIP Sublime Text
    - minimap: code map as scroll bar like sublime
    - linter: don't ever code without linting
    - atom-ternjs: Autocomplete for js
    - autocomplete-modules: Autocomplete for js require/import
    - autocomplete-json
    - pigments: show colors from hex
    - atom-beautify: just in case
    - file-icons
    - fonts
    - highlight-selected
### iOS Dev
- [Xcode](https://developer.apple.com/xcode/): duh...
- [SimSim](https://github.com/dsmelov/simsim): Open / clear iOS simulator files easily
- [DB Browser for SQLite](https://github.com/sqlitebrowser/sqlitebrowser): SQLite browser
- [Iconizer](https://github.com/raphaelhanneken/iconizer): Xcode image assets generator
### Backend Dev
- [Postman](https://www.getpostman.com): Web api testing / documentation
- [Sequel Pro](https://github.com/sequelpro/sequelpro): MySQL browser
- [PSequel](http://www.psequel.com): PostgreSQL browser
### Misc.
- [SourceTree](https://www.sourcetreeapp.com): Git client
- [Rambox](https://github.com/saenzramiro/rambox): Open Source mini-browser for combining messengers

# Acknowledgement
- Dotfile management method from [this article](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)
