set fish_greeting

set -x EDITOR nvim

set -Ux DOCKER_HOST unix://$XDG_RUNTIME_DIR/podman/podman.sock
set -Ux GOPATH ~/Code
set -Ux GOPRIVATE "dev.azure.com/finorun/*"

set -Ux NVM_SYMLINK_CURRENT true

if test -d ~/.local/bin
  if not contains -- ~/.local/bin $PATH
    set -p PATH ~/.local/bin
  end
end

if test -d ~/.nvm/current/bin
  if not contains -- ~/.nvm/current/bin $PATH
    set -p PATH ~/.nvm/current/bin
  end
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

load_nvm > /dev/stderr
starship init fish | source
