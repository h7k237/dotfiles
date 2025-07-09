# Directories
alias cdro="cd ~/co/router"
alias cdmer="cd ~/co/router/meraki"
alias cdemer="cd ~/co/router/click-elts/elts-meraki"
alias cdplrs="cd ~/co/router/base/switch-polaris/plrs-click"
alias cdmrvl="cd ~/co/router/base/marvell/mrvl-click"
alias cdbcm="cd ~/co/router/base/broadcom/bcm-click"
alias cdy="cd ~/co/router/yocto"
alias cdypok="cd ~/co/router/yocto/poky"
alias cdywrk="cd ~/co/router/yocto/build/tmp/work"
alias cdeplrs="cd ~/co/router/click-elts/elts-meraki/elements/switch_polaris"
alias cdlibm="cd ~/co/router/meraki/libmeraki"
alias cddisc="cd ~/co/router/click-elts/elts-meraki/elements/discovery_proto"
alias cddep='cd ~/co/router/yocto/build/tmp/deploy/images'
alias cdb='cd ~/co/router/yocto/build'
alias cdmy='cd ~/co/router/scripts/mapy'

# Utils
alias ds="du -cksh * | sort -hr"
alias l='ls -alsh'

alias bake="bitbake -c cleanall platform-click-config uclick uclick-elts-meraki uclick-plrs-click; bitbake meraki-image -c upload"
alias qbake="bitbake meraki-image -c upload"

alias tma='tmux attach'
alias tmad='tmux a -d'

alias gst='git status'
alias gb='git branch -vv'
alias greb='git rebase -i HEAD~10'
alias grebc='git rebase --continue'
alias gsub='git submodule update --init --recursive'

# <cmd> <cmd_modifiers> <key> <opt_modifiers> <pager>
function custom_page() {
    local IFS="|"
    $1 $2 $3 $4 | $5
}

# only 1 key allowed
# multiple options allowed
function custom_parse() {
    local cmd="$1"
    local cmd_modifiers="$2"
    local pager="$3"
    local key=""
    local opt=""
    shift 3
    if [ "$#" -gt 0 ]; then
        key="$1"
        local IFS="|"
        if [ "${key:0:1}" = "-" ]; then
            key=""
            opt="$*"
        else
            shift 1
            opt="$*"
        fi
    fi
    custom_page "$cmd" "$cmd_modifiers" "$key" "$opt" "$pager"
}

alias rip='custom_parse "rg|-n|-C2" "--color=always" "less|-R" '
alias glo='custom_parse "git|log" "--graph|--pretty=format:%C(red)%h%Creset %C(bold blue)(%cr) %C(magenta)<%an>%Creset %s %C(yellow)%d%Creset|--abbrev-commit|--color=always" "less|-R" '
alias glf='custom_parse "git|log" "--graph|--abbrev-commit|--color=always" "less|-R" '
alias  gs='custom_parse "git|show" "--color=always" "less|-R" '

#alias vim='env PATH="$HOME/bin/:$HOME/.local/bin/:$PATH" vim'
alias vim='nvim'
alias nv='nvim'
alias nvc='nvim ~/.config/nvim/init.lua'

alias python='/usr/bin/python3.8'

# telnet
pi_ip='10.92.104.80'
alias conswbn="telnet $pi_ip 5001"
alias fconswbn="telnet $pi_ip 5051"
alias conswen="telnet $pi_ip 5002"
alias fconswen="telnet $pi_ip 5052"
alias conswdn="telnet $pi_ip 5003"
alias fconswdn="telnet $pi_ip 5053"
alias fconksfo="telnet $pi_ip 6051"
