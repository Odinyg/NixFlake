{
  nixboot = "sudo nixos-rebuild boot --flake /home/none/nix/#myNixos";
  nixswitch = "sudo nixos-rebuild switch --flake /home/none/nix/#myNixos";
  vim="nvim"
  dcpshow="docker ps --format '{{.Names}}'\t'{{.Ports}}'"
  sshmain='ssh -Y $server'
  ..="cd .."
  ...="cd ../.."
  ...."cd ../../.."
  v="nvim"
  grep='grep --color=auto'
  # update='sudo pacman -Syu'
  la='ls -a'
  ll='ls -la'
  l='ls'
  l.="ls -A | egrep '^\.'"
  psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
  workvpn="sudo openvpn --compat-mode 2.4.9 --config $workvpn --auth-user-pass $passwordvpn



}