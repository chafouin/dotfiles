# Some ls alias
alias ls='ls --color=auto'
alias ll='ls -lAF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'

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
alias ports='netstat -tulanp'

# Update & upgrade
alias update='$INSTALLER update && $INSTALLER upgrade -y'

# Get RAM info
alias meminfo='free -mlth'

# Get cpu info
alias cpuinfo='lscpu'

# Always use htop
alias top='htop'

# Call gdb without starting message
alias gdb='gdb -q'

# Kill all background jobs
alias ka='kill `jobs -p`'

# Make
alias make='make -j10'

# Python alias
alias py='python2.7'
alias py3='python3.5'

# Reload bash config
alias reload='source ~/.$(ps -o comm= -p $$)rc'

# Docker alias
# Kill all running containers
alias dockerkill='docker kill $(docker ps -q)'
# Delete all containers
alias dockercleanc='docker rm -f $(docker ps -aq)'
# Delete all images
alias dockercleani='docker rmi -f $(docker images -q)'
# Delete unused containers
alias dockercleanu='docker rmi -f $(docker images -q --filter "dangling=true")'
# Delete everything
alias dockerclean='dockerkill; dockercleanc || true && dockercleani'
# Open a shell into the last container started
alias dockersh='docker exec -ti $(docker ps -q | head -n 1) /bin/bash'
