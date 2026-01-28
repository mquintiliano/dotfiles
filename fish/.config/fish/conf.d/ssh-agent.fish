# Check if the systemd-managed ssh-agent socket exist and set it
#
# command: systemct --user enable --now ssh-agent.socket

if test -z SSH_AUTH_SOCK -a -S "$XDG_RUNTIME_DIR/ssh-agent.socket"
    set -gx SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"
end
