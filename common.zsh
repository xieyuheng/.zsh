alias l="ls -hCF"
alias ll="ls -hlF"
alias lll="ls -halF"
eval $(dircolors ~/.dircolors)

# alias l="exa"
# alias ll="exa --header --group --bytes --long --git"
# alias lll="exa --header --group --bytes --long --git --all"
# alias llll="exa --header --group --bytes --long --git --all --tree --level=2"
# alias lllll="exa --header --group --bytes --long --git --all --tree --level=3"


# alias fasm='fasm -m 100000 '

# alias unzip='unzip -L '


# 使用最下面的一个是为了增加可读性
# alias c='rsync --recursive --links --perms --times --group --owner --devices --specials --verbose --human-readable'
# alias m='rsync --recursive --links --perms --times --group --owner --devices --specials --verbose --human-readable --remove-source-files'

alias copy='rsync --recursive --links --perms --times --group --owner --devices --specials --verbose --human-readable'
alias copy-fast='rsync --recursive --links --perms --times --group --owner --devices --specials'
alias move='rsync --recursive --links --perms --times --group --owner --devices --specials --verbose --human-readable --remove-source-files'

alias rm=' timeout 3 rm -Iv --one-file-system '
# This alias suspends rm after three seconds
# asks confirmation to delete three or more files
# lists the operations in progress
# does not involve more than one file systems
# and does not store itself in the shell history file
# if the shell is configured to ignore space starting commands
# Substitute -I with -i if you prefer to confirm even for one file

alias mv='  mv -v'
# This alias suspends mv after eight seconds
# asks confirmation to delete three or more files
# lists the operations in progress
# and does not store itself in the shell history file
# if the shell is configured to ignore space starting commands
