# Launch i3lock (call /bin/lock script)
alias lk='clear && lock.sh'

# Some ls alias
alias ls='ls --color=auto'
alias ll='ls -lAF'
alias la='ls -A'
alias l='ls -CF'

# Start the calculator
alias bc='bc -lq'

# Generate sha1 digest
alias sha1='openssl sha1'

# Create parent directory when mkdir
alias mkdir='mkdir -pv'

# Colorize diff
alias diff='colordiff'

# Display jobs with PID
alias j='jobs -l'

# Show open ports
alias ports='netstat -atupnl'

# Show open connections
alias conntrak="watch ss -tp"

# Delete file
alias delete="shred -f -u"

# Ask safety confirmation
alias mv='mv -fiv'
alias cp='cp -rfiv'
alias ln='ln -sfiv'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# Update & upgrade at the same time
alias update='sudo $INSTALLER update && sudo $INSTALLER upgrade -y && update-flash'

# Call sudo with poweroff
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias shutdown='sudo /sbin/shutdown'
#alias logout='i3-msg exit'

# Get RAM info
alias meminfo='free -mlt'

# Get cpu info
alias cpuinfo='lscpu'

# Get top process eating memory
alias psmem='ps auxf | sort -nr -k 4 | head -10'

# Get top process eating cpu
alias pscpu='ps auxf | sort -nr -k 3 | head -10'

# Always use htop
alias top='htop'

# Change screen brightness
alias bup='xbacklight -inc 20'
alias bdw='xbacklight -dec 20'

# Call valgrind colored
alias vg='valgrind-color'

# Call gdb without starting message
alias gdb='gdb -q'

# Kill all background jobs
alias ka='kill -9 `jobs -p`'

# Bind iwconfig & ifconfig
alias ifconfig='sudo /sbin/ifconfig'
alias iwconfig='sudo /sbin/iwconfig'

# Control keyboard backlight
alias kbd='backlight.sh down'
alias kbu='backlight.sh up'

# Make
alias make='make -j10'

# Python alias
alias py='python2.7'
alias py3='python3.4'

# Reload bash config
alias reload='source ~/.bashrc'

# Docker alias
alias docker='sudo docker'
alias dockerkill='docker kill $(docker ps -q)'
alias dockercleanc='docker rm -f $(docker ps -aq)'
alias dockercleani='docker rmi -f $(docker images -q)'
alias dockercleanu='docker rmi -f $(docker images -q --filter "dangling=true")'
alias dockerclean='dockerkill; dockercleanc || true && dockercleani'
alias dockersh='docker exec -ti $(docker ps -q | head -n 1) /bin/bash'

# Gnome wifi manager
alias wifi='gnome-control-center network'

# Start and stio flux
alias fluxstart="xflux -l 48.51 -g 2.20"
alias fluxstop="kill $(pgrep xflux)"

# Update Flash Player
alias update-flash="sudo update-flashplugin-nonfree --install"

# Get ip
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"

# Ssh agent
alias agent="ssh-agent && ssh-add"

# Mount Android
alias mounta="jmtpfs"

# Unmount Android
alias umounta="fusermount -u"

# Create a temp dir and go in it
alias tmp="mktemp_dir"
