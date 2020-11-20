# pacman stuff
alias ins='yay -S --noconfirm'
alias update='yay -Syu --noconfirm'
alias remove='sudo pacman -R'
alias orphans='sudo pacman -Rns $(pacman -Qtdq)'

#neovim
alias vim='nvim'

# nah uh uh, you didn't say the magic word :)
alias please='sudo $(fc -nl -1)'
alias snano='sudo nano'
alias sv='sudo vim'

# hardware
alias mouse='sudo ltunify unpair mouse && sudo ltunify pair'

# systemd
alias sd='sudo systemctl'
alias daemon-reload='sudo systemctl daemon-reload'

# reboot, logout, etc.
alias rbt='sudo shutdown -r now'
alias shutdown='sudo shutdown now'

# startup scripts
alias bashrc='vim ~/.bashrc'
alias zrc='vim ~/.zshrc'
alias szsh="source ~/.zshrc"
alias arc='vim ~/.alias.sh'
alias sbash='source ~/.bashrc'
alias xrc='vim ~/.xinitrc'
alias crc='vim ~/.conkyrc'
alias i3rc='vim ~/.config/i3/config'
alias vimrc='vim ~/.config/nvim/init.vim'
alias Xrc='vim ~/.Xdefaults'
alias alrc='vim ~/.config/alacritty/alacritty.yml'

# change directory and copy commands
alias ..='cd ..'
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias torrents="cd ~/Torrents && ls"
alias hj='cd /home/jay'
alias mvs='cd /media/media2/Movies'
alias music='cd /home/jay/Music'
alias tvs='cd /home/jay/TV\ Shows/ && ls'
alias notes='cd /home/jay/Documents/Notes && ls'
alias rsm='rsync --partial --progress --append --rsh=ssh -r -h --remove-sent-files'
alias rcopy='rsync --partial --progress --append --rsh=ssh -r -h'

# other
alias ls='exa'
alias ll='exa -bghl'
alias la='exa -bghla'
alias lt='exa -T'
alias cat='bat'

## scripts
#alias rs='/home/jay/Scripts/rs.sh'
#alias tvr='/home/jay/Scripts/tvr.sh'

## youtube downloader
#alias yt='youtube-dl -x --audio-format mp3 --prefer-ffmpeg'

# Docker
alias dps='docker ps -a'
# Remove all unused images
alias imageclean='docker rmi $(docker images | grep none | sed "s/[ ]* /:/g" | cut -f3 -d:)'
# Remove unused volumes
alias volclean='docker volume prune'
# Stop all containers
alias dstop='docker stop $(docker ps -a | cut -f1 -d " " | grep -v CONTAINER)'
# Remove all containers
alias drm='docker rm $(docker ps -a | cut -f1 -d " " | grep -v CONTAINER)'
# Remove all stopped containers
alias drm-stopped='docker rm $(docker ps -f "status=exited" | cut -f1 -d " " | grep -v CONTAINER)'

# kubectl
alias k="kubectl"
alias kp="kubectl get pods"
alias kd="kubectl describe"

# clipboard
alias pbcopy="xclip -selection c"

#ctxman
alias cc="ctxman && source ~/.config/ctxman/env"
