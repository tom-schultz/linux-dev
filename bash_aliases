alias cd='cd -P'
alias lsa='ls -a'
alias duhd='du -h -d1'
alias pyserver='cp -u -p ~/.linux-dev/http_server.py ./ && python -m http_server.py'
alias pych='python -m py_compile'
alias erg='grep -rI --include=* -E '
alias ack='ACK_PAGER_COLOR="less -x4SRFX" ack'
alias todo='grep --exclude-dir=.git -rEI "TODO|FIXME" . 2>/dev/null'
alias defcaps='xkbcomp ~/.linux-dev/xkb_defkeys $DISPLAY'
alias tamcaps='xkbcomp ~/.linux-dev/xkb_tamkeys $DISPLAY'
alias chromecaps='xkbcomp ~/.linux-dev/xkb_chromekeys $DISPLAY'
alias betmux="~/.linux-dev/betmux.sh"
alias nbash="~/.linux-dev/new-bash.sh"
alias bump-repo="~/.linux-dev/bump-repo.sh"
alias doco="docker-compose"
alias vi="vim"
alias py3=". ~/.python/p3/bin/activate"
alias py2=". ~/.python/p2/bin/activate"
alias dpy='deactivate'
alias gh="history | grep "
alias gitbr="git rev-parse --abbrev-ref HEAD"

awsp() {
  export AWS_DEFAULT_PROFILE="$1"
}

cfnw() {
  declare -A commands
  commands=(["c"]="create" ["d"]="delete" ["u"]="update")
  [[ $# = 2 ]] && command="${commands[$1]}" || command="create"
  [[ $# = 2 ]] && stack=$2 || stack=$1
  echo "Checking to see if $command is done for stack $stack"
  output=$((aws cloudformation wait stack-$command-complete --stack-name $stack) 2>&1)
  if [[ $output == *"failed"* ]] | [[ $output == *"Error"* ]]; then
      cowsay $stack $command 'failed!'
  else
      cowsay $stack $command 'done!'
  fi
}

cfnv() {
  aws cloudformation validate-template --template-body file://$1
}

alias tf="terraform"

export NUMCORES=`grep -c '^processor' /proc/cpuinfo`
alias jmake='make -j$NUMCORES'
alias remake='make clean && jmake'

alias apt-upgrade='sudo apt-get update && sudo apt-get upgrade -y'
alias yum-update='sudo yum update -y'

. ~/.localbash_aliases
