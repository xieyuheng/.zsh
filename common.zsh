alias l="ls -hCF"
alias ll="ls -halF"
# alias "?"="du -sh ."


# alias fasm='fasm -m 500000 '


# 使用最下面的一个是为了增加可读性
# alias copy='rsync -avh'
# alias copy='rsync -rlptgoDvh'
alias copy='rsync --recursive --links --perms --times --group --owner --devices --specials --verbose --human-readable'

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
