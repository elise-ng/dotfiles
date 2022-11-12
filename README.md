# dotfiles

## Bootstrapping new system

```sh
echo ".dotfiles" >> .gitignore
git clone --bare git@github.com:chihimng/dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```

## Usage

Essentially git

```sh
dotfiles status
dotfiles add .zshrc
dotfiles commit -m "Update .zshrc"
dotfiles push
```

## Setup

```sh
git init --bare $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
```

## Tools I use

### Stuff Apple should have implemented in macOS

- ~~[Magnet](https://itunes.apple.com/us/app/magnet/id441258766?mt=12): Windows snapping~~
- [Rectangle](https://github.com/rxhanson/Rectangle): Windows snapping open sourced
- [ScreenshotMenu](https://itunes.apple.com/us/app/screenshotmenu/id562169322?mt=12): Take screenshots without memorizing the stupid keyboard shortcut
- [SensibleSideButtons](https://github.com/archagon/sensible-side-buttons): Enable forward and backward mouse buttons

### Terminal

- [iTerm2](https://github.com/gnachman/iTerm2): The new default terminal for macOS
  - Color: [Port of Atom One Dark](https://github.com/one-dark/iterm-one-dark-theme)
  - Font: DejaVu Sans Mono, 12pt
- [zsh](http://www.zsh.org)
- [Oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

### Text Editor

- [VS Code](https://github.com/Microsoft/vscode):
  - Color: One Dark Pro
  - Font: SF Mono, 12pt, weight 500
- [IntelliJ](https://www.jetbrains.com/idea/): Good auto suggestions & most plugins just works out of the box

### Mobile Dev

- [Xcode](https://developer.apple.com/xcode/): duh...
  - Theme: Default Dark
- [SimSim](https://github.com/dsmelov/simsim): Open / clear iOS simulator files easily
- [DB Browser for SQLite](https://github.com/sqlitebrowser/sqlitebrowser): SQLite browser
- [Iconizer](https://github.com/raphaelhanneken/iconizer): Xcode image assets generator
- [Android Studio](https://developer.android.com/studio)

### Web Dev

- [i18n Manager](https://www.electronjs.org/apps/i18n-manager)

### Backend Dev

- ~~[Clipped](https://github.com/clippedjs/clipped): Configure Node projects, build docker images and more~~ RIP
- [Postman](https://www.getpostman.com): Web api testing / documentation
- ~~[Sequel Pro](https://github.com/sequelpro/sequelpro): MySQL browser~~
- ~~[PSequel](http://www.psequel.com): PostgreSQL browser~~
- [DataGrip](https://www.jetbrains.com/datagrip/): DB IDE that works with anything
- [TablePlus](https://tableplus.com): Looks nice and better data import function
- [Cyberduck](https://cyberduck.io): S3 browser
- [RedisInsight](https://redislabs.com/redis-enterprise/redis-insight/): Redis browser
- [Lens](https://k8slens.dev): k8s IDE

### Misc

- ~~[SourceTree](https://www.sourcetreeapp.com): GUI git client that doesn't suck~~
- [Fork](https://git-fork.com) GUI git client that doesn't need to you sign up an account
- [Franz](https://github.com/meetfranz/franz): All-in-one message app (basically just a mini chrome)
- [git-standup](https://github.com/kamranahmedse/git-standup): List commit history for standup meetings
- [iStats](https://github.com/Chris911/iStats): Hardware sensor readouts for mac
- [LyricsX](https://github.com/ddddxxx/LyricsX): Open source lyrics app that support bilingual and touch bar
- [Hex Field](https://github.com/ridiculousfish/HexFiend): Binary file editor, just in case
- [GPGTools](https://gpgtools.org)
- [Keybase](https://keybase.io)

## Acknowledgement

- Dotfile management method from [this article](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)
