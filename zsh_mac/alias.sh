# bash

# nah uh uh, you didn't say the magic word :)
alias please='sudo $(fc -nl -1)'
alias snano='sudo nano'
alias sv='sudo vim'

# homebrew
alias ins='brew install'
alias update='brew update && brew upgrade'

# reboot, logout, etc.
alias rbt='sudo shutdown -r now'
alias shutdown='sudo shutdown now'

# neovim
alias vim='/usr/local/bin/nvim'
alias v='/usr/local/bin/nvim'

# startup scripts
alias bashrc='vim ~/.bashrc'
alias zrc='vim ~/.zshrc'
alias szsh="source ~/.zshrc"
alias arc='vim ~/.alias.sh'
alias sbash='source ~/.bashrc'
alias xrc='vim ~/.xinitrc'
alias crc='vim ~/.conkyrc'
alias i3rc='vim ~/.config/i3/config'
alias alrc='vim ~/.config/alacritty/alacritty.yml'
alias tmrc='vim ~/.tmux.conf'

#alias vimrc='vim ~/.vimrc'
alias vimrc='vim ~/.config/nvim/init.vim'
alias Xrc='vim ~/.Xdefaults'

# change directory and copy commands
alias ..='cd ..'
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias rsm='rsync --partial --progress --append --rsh=ssh -r -h --remove-sent-files'
alias rcopy='rsync --partial --progress --append --rsh=ssh -r -h'

# other
alias ls='exa'
alias ll='exa -bghl'
alias la='exa -bghla'
alias lt='exa -T'
alias cat='bat --theme="base16-256"'

# git
alias gp='git push --set-upstream origin $(git symbolic-ref --short HEAD)'
alias gpmr='git push -o merge_request.create --set-upstream origin $(git symbolic-ref --short HEAD)'
alias gclean=' git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'

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
alias klf="kubectl logs -f"

#ultralist
alias u='ultralist'
alias ul='ultralist list'

# Hashicorp
alias pac='~/bin/packer'
alias pacval='~/bin/packer validate -var-file=variables.json'
alias pacbuild='~/bin/packer build -var-file=variables.json'
alias tf='terraform'
alias tfp='terraform plan'
alias tfa='terraform apply -auto-approve'

function tfip {
  instance="aws_instance.$1"
  terraform show | grep -A 40 "$instance" | grep "public_ip =" | sed "s/  public_ip = //"
}

alias lnodes="aws ec2 describe-instances --filter Name=tag-key,Values=kubernetes.io/cluster/k8s2 Name=instance-state-name,Values=running --query 'Reservations[*].Instances[*].{Instance:PrivateDnsName,Name:Tags[?Key==\`Name\`]|[0].Value}' --output text"

# mac stuff
alias htop='sudo htop'
alias openvpn='sudo openvpn'
#alias ovpn='sudo openvpn'

# clipboard stuff
alias catpub='cat ~/.ssh/id_rsa.pub | pbcopy'
alias copy="cat $1 | pbcopy"

source ~/.ripple_env
