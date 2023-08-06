{ pkgs, ... }: {
   programs.zsh = {
    enable = true;
    oh-my-zsh = {
      enable = true;
      theme = "cloud";
      custom = "$HOME/.config/zsh/oh-my-zsh";
      plugins = [
          "fzf"		
	  "sudo"
          "git"
          "docker"
          "1password"
          "ripgrep"
      ];


    };
    history.path = "$HOME/.config/zsh/.zsh_history";
    dotDir = ".config/zsh";
    shellAliases = {
    nixboot = "sudo nixos-rebuild boot --flake /home/none/nix/#myNixos";
    nixswitch = "sudo nixos-rebuild switch --flake /home/none/nix/#myNixos";
    };
  };
    home.packages = with pkgs; [
      ueberzugpp
      fzf

];
}
