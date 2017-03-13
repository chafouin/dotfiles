# Some ls alias
alias ls='ls --color=auto'
alias ll='ls -lAFh'
alias la='ls -A'
alias l='ls -CF'

# Start the calculator
alias bc='bc -lq'

# Create parent directory when mkdir
alias mkdir='mkdir -pv'

# Display jobs with PID
alias j='jobs -l'

# Show open ports
alias ports='netstat -atupnl'

# Show open connections
alias conntrak="watch ss -tp"

# Delete file
alias delete="shred -f -u"

# Show open connections
alias conntrak="watch ss -tp"

# Show uptime
alias up='uptime'

# Delete file
alias delete="shred -f -u"

# Ask safety confirmation
alias mv='mv -fiv'
alias cp='cp -rfiv'
alias ln='ln -sfiv'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

## Colorize grep command
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Get disk info
alias df='df -H'
alias du='du -ch'

# Get RAM info
alias meminfo='free -mlt'

# Get cpu info
alias cpuinfo='lscpu'

# Get top process eating memory
alias psmem='ps auxf | sort -nr -k 4 | head -10'

# Get top process eating cpu
alias pscpu='ps auxf | sort -nr -k 3 | head -10'

# Filter ps with grep
alias psa='ps auxw | grep $1'

# Call gdb without starting message
alias gdb='gdb -q'

# Kill all background jobs
alias ka='kill -9 `jobs -p`'

# Python alias
alias py='python2.7'
alias py3='python3.4'

# Reload bash config
alias reload='source ~/.$(echo $)rc'

# Docker alias
alias docker='sudo docker'
alias dockerkill='docker kill $(docker ps -q)'
alias dockercleanc='docker rm -f $(docker ps -aq)'
alias dockercleani='docker rmi -f $(docker images -q)'
alias dockercleanu='docker rmi -f $(docker images -q --filter "dangling=true")'
alias dockercleans='docker ps -a | grep "Exited" | awk "{print $1}" | xargs --no-run-if-empty docker rm -fv'
alias dockerclean='dockerkill; dockercleanc || true && dockercleani'
alias dockersh='docker exec -ti $(docker ps -q | head -n 1) /bin/bash'

# Get ip
alias myip="curl ifconfig.co"

# Get city
alias myct="curl ifconfig.co/city"

# Get country
alias mycn="curl ifconfig.co/country"

# Ssh agent
alias agent="ssh-agent && ssh-add"

# Mount Android
alias mounta="jmtpfs"

# Unmount Android
alias umounta="fusermount -u"

# Print nicely mount output
alias mnt='mount | column -t'

# Create a temp dir and go in it
alias tmp="mktemp_dir"

# Tmux attach last session or create new one
alias tma="tmux attach || tmux"

# Tmux attach to given session
alias tmt="tmux attach -t"

# Tmux print all session
alias tml="tmux ls"

# Tmux create new session tagged with the current dir name
alias tmd="tmux new-session -A -s $(basename $PWD | tr -d .)"

# Kill given session
alias tmk="tmux kill-session -t"

# Start a local webserver from the current directory
alias httpsrv='python -m SimpleHTTPServer'
