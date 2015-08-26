function e {
    emacsclient -c  $1  &!
}

export EMACS_PLUGIN_LAUNCHER="$ZSH/plugins/emacs/emacsclient.sh"

alias  emacs='LC_CTYPE=zh_CN.UTF-8  emacs'
# alias emacs="LC_CTYPE=zh_CN.UTF-8 $EMACS_PLUGIN_LAUNCHER --no-wait"

# to code all night long

alias em=emacs

# alias emasc=emacs
# alias emcas=emacs
# alias emcsa=emacs
# alias emsca=emacs
# alias emsac=emacs
 
# alias emasa=emacs
# alias emaca=emacs
# alias emcsc=emacs
# alias emcac=emacs
# alias emsas=emacs
# alias emscs=emacs



export EDITOR="e"            # e = emacsclient -c $1
# export EDITOR="${EDITOR:-${EMACS_PLUGIN_LAUNCHER}}"

export ALTERNATE_EDITOR="e3" # for emacsclient :
# or :
# export EDITOR="emacsclient -c  --alternate-editor=e3"



# same than M-x eval but from outside Emacs.
alias eeval="$EMACS_PLUGIN_LAUNCHER --eval"

# create a new X frame
alias eframe='emacsclient --alternate-editor "" --create-frame'


# Write to standard output the path to the file
# opened in the current buffer.
function efile {
    local cmd="(buffer-file-name (window-buffer))"
    "$EMACS_PLUGIN_LAUNCHER" --eval "$cmd" | tr -d \"
}


# Write to standard output the directory of the file
# opened in the the current buffer
function ecd {
    local cmd="(let ((buf-name (buffer-file-name (window-buffer))))
                     (if buf-name (file-name-directory buf-name)))"

    local dir="$($EMACS_PLUGIN_LAUNCHER --eval $cmd | tr -d \")"
    if [ -n "$dir" ] ;then
        echo "$dir"
    else
        echo "can not deduce current buffer filename." >/dev/stderr
        return 1
    fi
}
