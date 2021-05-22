# The folowing brew recipes will be installed by ~/.dotfiles/install/brew-updates.sh
# Update this Brewfile by `brew bundle dump --force` but these comments will be lost!
# https://github.com/Homebrew/homebrew-bundle

# Binaries
# Essentials
brew "pkg-config"  # https://github.com/driesvints/dotfiles/issues/20
brew "openssl@1.1"
brew "openldap"
brew "curl"  # , link: false
# brew "curl-openssl", link: false
brew "wget"
brew "git"
brew "zsh"
# brew "zsh-autosuggestions"
# brew "zsh-completions"
# brew "zsh-syntax-highlighting"
brew "bash"
# brew "bash-completion"
brew "coreutils"  # Those that come with macOS are outdated
brew "inetutils"
brew "grep"
brew "make"
brew "cmake"
brew "gcc"
# brew "awk"
brew "gawk"
brew "gnu-getopt"
brew "gnu-indent"
brew "gnu-sed"
brew "gnu-tar"
brew "gnu-which"
brew "gnutls"
brew "autoconf"
brew "automake"
brew "libtool"
brew "tree"  # List directories in a tree structure
# brew "trash"
brew "tmux"
brew "reattach-to-user-namespace"
# brew "exa"
# brew "fzf"
brew "ncurses"
brew "screenfetch"
brew "lolcat"
brew "timewarrior"
# brew "connect"
brew "readline"
brew "zlib"  # Needed for Memcached
brew "rename"
brew "jq"
# brew "gettext", link: true

# brew "openssh"
brew "htop"
brew "gotop"
brew "autojump"

# Security
brew "base64"
brew "pinentry-mac"
# brew "gpg"
brew "gnupg"
brew "pgpdump"
brew "git-crypt"
brew "bitwarden-cli"
brew "cfssl"
# brew "acme"
# brew "certbot"
# brew "hashcat"
# brew "hashcat-long"
# brew "aircrack-ng"
# brew "reaver"

# Compression
brew "unar"
brew "unrar", link: false
brew "zip"
brew "unzip"
brew "p7zip"
brew "apktool"

# Network
brew "telnet", link: false
brew "tcpdump"
brew "nmap"

# Configuration
brew "stow"

# Development
brew "lua"
brew "vim"
brew "diff-so-fancy"
# brew "colordiff"
# brew "go"
brew "python"
brew "pyenv"
brew "pyenv-virtualenv"
brew "ruby"
brew "ruby-build"
# brew "ruby-completion"
brew "rbenv"
brew "rbenv-gemset"
brew "rbenv-vars"
brew "node"
# brew "node@10"
brew "node-build"
brew "yarn"
brew "hugo"

brew "imath"
brew "openexr"
brew "imagemagick"
brew "neofetch"

brew "erlang"
brew "erlang@22"

# brew 'php'
# brew 'php@7.3'
# brew 'php@7.2'
# brew 'composer'
# brew 'nginx'
# brew 'node'
# brew 'redis'
# brew 'yarn'

# Kubernetes
# brew "kubernetes-cli"
# brew "kubectx"
# brew "openshift-cli"
# brew "helm"
# brew "minikube"

# Azure
# brew "azure-cli"
# brew "azure/functions/azure-functions-core-tools@3"
# brew "terraform"
# cask "powershell"

# Services
# brew "unbound"
brew "bind"
# brew "caddy"
# brew "consul"
# brew "consul-template"
# brew "traefik"
# brew "traefik@1"
# brew "tor"
# brew "privoxy"
brew "frps", restart_service: :changed
brew "frpc", restart_service: :changed

# Database
brew "mysql@5.7", restart_service: :changed, link: true, conflicts_with: ["mysql"]
# brew "mysql-connector-c++", link: false
brew "mysql-connector-c++@1.1", link: false
brew "mysql-client", link: false
brew "mysql-client@5.7", link: false
brew "sqlite"
# brew "postgresql"
brew "redis", restart_service: :changed
brew "rabbitmq", restart_service: :changed


brew "logstash"
brew "filebeat"

brew "moco"
# brew "mockserver"

# Download
brew "aria2"
brew "annie"
brew "youtube-dl"
# brew "axel"
brew "issenn/core/baidupcs-go", args: ["build-from-source", "git"]
# brew "syncthing"
brew "rclone"
brew "megatools"

# Entertainment
# brew "fontconfig"
# brew "issenn/core/vlmcsd"

# API Control
brew 'flarectl'

# DMG Creator
brew 'create-dmg'

# brew 'awscli'
# brew 'bat' # "cat" on steroids
# brew 'ffmpeg'
brew 'ffmpeg@2.8'
# brew 'gh'
# brew 'httpie'
# brew 'hub'
# brew 'mackup'
brew 'mas'  # Mac App Store manager
# brew 'stripe'
# brew 'trash' # Manage the Trash bin
# Spatie Medialibrary
# brew 'jpegoptim'
# brew 'optipng'
# brew 'pngquant'
# brew 'svgo'
# brew 'gifsicle'

# Fonts
# cask 'font-lato'
# cask 'font-open-sans'
# cask 'font-roboto'
# cask 'font-roboto-condensed'
# cask 'font-source-code-pro-for-powerline'
# cask 'font-source-code-pro'
# cask 'font-source-sans-pro'
# cask 'font-source-serif-pro'

# cask "font-hack-nerd-font"
# cask "font-meslo-for-powerline"
cask "issenn/cask-fonts/font-meslo-nerd-font-patched"

# Apps
cask_args appdir: "/Applications"

# brew cask info xamarin-studio xamarin xamarin-android xamarin-ios xamarin-mac
cask "appcleaner"
cask "macs-fan-control"
cask "shadowsocksx-ng"
cask "shadowsocksx-ng-r"
cask "clashx"
cask "squirrel"
cask "iterm2"
cask "lens"
cask "istat-menus"
cask "the-unarchiver"
# cask "keka"
cask 'rar'
cask "issenn/cask-versions/oracle-java8" unless system "/usr/libexec/java_home --failfast"
cask "visual-studio-code"
cask "sublime-text"
cask "google-chrome"
cask "pritunl"
cask "switchhosts"
# cask "keepassxc"
cask "bitwarden"
cask "kawa"
cask "typora"
cask "macdown"
cask "alacritty"
cask "vmware-fusion"
cask "docker"
cask "pycharm"
cask "intellij-idea"
cask "android-studio"
cask "goland"
# cask "webstorm"
cask "datagrip"
cask "charles"
# cask "wireshark"
cask "postman"
cask "wechat"
# cask "wechatwork"
cask "qq"
cask "discord"
cask "youdaonote"
cask "apache-directory-studio"
cask "jump"
# cask "parallels"
# cask "parallels-client"
cask "transmit"
# cask "yacreader"
# cask "poi"
# cask "picgo"
# cask "keybase"

cask 'vox'
cask 'mpv'
cask 'iina'
cask 'vlc'
cask 'lyricsx'
cask 'issenn/cask-versions/audirvana'

cask 'soundflower'

cask 'obs'
cask 'streamlabs-obs'

cask 'adobe-creative-cloud'

cask 'steam'

# cask "neteasemusic"

# cask "beyond-compare"
# cask '1password'
# cask 'aerial'
# cask 'alfred'
# cask 'bartender'
# cask 'caffeine'
# cask 'firefox'
# cask 'github'
# cask 'google-backup-and-sync'
# cask 'gpg-suite'
# cask 'imageoptim'
# cask 'insomnia'
# cask 'java'
# cask 'mysqlworkbench'
# cask 'nvidia-geforce-now'
# cask 'phpstorm'
# cask 'screenflow'
# cask 'skype'
# cask 'slack'
# cask 'tableplus'
# cask 'telegram-desktop'
# cask 'there'
# cask 'tor-browser'
# cask 'transmission'
# cask 'transmit'
# cask 'vagrant'
# cask 'virtualbox'  # Might need to allow access in Security settings
# cask 'virtualbox-extension-pack'
# cask 'whatsapp'
# cask "dotnet-sdk"

# Fun
# brew "cmatrix"
# cask "spotmenu"

# Quicklook
# cask 'qlcolorcode'
# cask 'qlmarkdown'
# cask 'quicklook-json'
# cask 'quicklook-csv'
# cask 'qlstephen'

# Do it
# brew update && brew bundle -d -v
