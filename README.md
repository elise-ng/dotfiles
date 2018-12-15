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

## Tools I use
### Stuff Apple should have implemented in macOS
- [Magnet](https://itunes.apple.com/us/app/magnet/id441258766?mt=12): Windows snapping
- [ScreenshotMenu](https://itunes.apple.com/us/app/screenshotmenu/id562169322?mt=12): Take screenshots without memorizing the stupid keyboard shortcut
- [SensibleSideButtons](https://github.com/archagon/sensible-side-buttons): Enable forward and backward mouse buttons
### Terminal
- [iTerm2](https://github.com/gnachman/iTerm2): The new default terminal for macOS
    - Color: [A Port of Atom One Dark](https://github.com/nathanbuchar/atom-one-dark-terminal)
    - Font: DejaVu Sans Mono, 12pt
- [zsh](http://www.zsh.org)
- [Oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
### Text Editor
- [VS Code](https://github.com/Microsoft/vscode): Moved to vs code from atom recently, still figuring it out...
    - Color: Atom One Dark
    - Font: DejaVu Sans Mono, 12pt
### iOS Dev
- [Xcode](https://developer.apple.com/xcode/): duh...
    - Theme: Default Dark
- [SimSim](https://github.com/dsmelov/simsim): Open / clear iOS simulator files easily
- [DB Browser for SQLite](https://github.com/sqlitebrowser/sqlitebrowser): SQLite browser
- [Iconizer](https://github.com/raphaelhanneken/iconizer): Xcode image assets generator
### Backend Dev
- [Clipped](https://github.com/clippedjs/clipped): Configure Node projects, build docker images and more
- [Postman](https://www.getpostman.com): Web api testing / documentation
- [Sequel Pro](https://github.com/sequelpro/sequelpro): MySQL browser
- [PSequel](http://www.psequel.com): PostgreSQL browser
### Misc.
- [SourceTree](https://www.sourcetreeapp.com): Git client
- ~[Rambox](https://github.com/saenzramiro/rambox): Open Source mini-browser for combining messengers~ Franz is now opensource
- [Franz](https://github.com/meetfranz/franz): Like Rambox but more beautiful
- [git-standup](https://github.com/kamranahmedse/git-standup): List commit history for standup meetings
- [gifify](https://github.com/vvo/gifify): CLI video to gif converter
- [iStats](https://github.com/Chris911/iStats): Hardware sensor readouts for mac
- [LyricsX](https://github.com/ddddxxx/LyricsX): Opensource lyrics app that support bilingual and touch bar

## Acknowledgement
- Dotfile management method from [this article](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)
