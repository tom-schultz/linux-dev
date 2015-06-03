alias cd='cd -P'
alias lsa='ls -a'
alias duhd='du -h -d1'
alias pyserver='cp -u -p ~/.linux-dev/http_server.py ./ && python -m http_server.py'
alias erg='grep -rI --include=* -E '
alias ack='ACK_PAGER_COLOR="less -x4SRFX" ack'
alias todo='grep --exclude-dir=.git -rEI "TODO|FIXME" . 2>/dev/null'
alias defcaps='xkbcomp ~/.linux-dev/xkb_defkeys $DISPLAY'
alias tamcaps='xkbcomp ~/.linux-dev/xkb_tamkeys $DISPLAY'
alias betmux="~/.linux-dev/betmux.sh"

export NUMCORES=`grep -c '^processor' /proc/cpuinfo`
alias jmake='make -j$NUMCORES'
alias remake='make clean && jmake'

. ~/.localbash_aliases
