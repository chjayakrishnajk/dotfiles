zoxide init fish | source
alias ls="exa --icons --classify --colour=auto --sort=type --group-directories-first --header --modified --git --binary --long"
alias la="ls -a"
alias ll="ls -al"
alias lt1="exa --long --tree --level=1"
alias lt2="exa --long --tree --level=2"
alias lt3="exa --long --tree --level=3"
alias lt4="exa --long --tree --level=4"
alias hx="helix"
alias cd="z"
if status is-interactive
    # Commands to run in interactive sessions can go here
    zoxide init fish | source
end

thefuck --alias | source

# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish
