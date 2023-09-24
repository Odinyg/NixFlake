{ ...}:
{
   
  programs.nixvim = {
    globals.mapleader = " ";
    enable = true;
    colorschemes.nord.enable = true;
    clipboard.register = "unnamedplus";
    options = { 
      number = true;
      relativenumber = true;
      shiftwidth = 2;
      };
    viAlias = true;
    vimAlias = true;
    plugins = {
      telescope = {
      enable = true;
      };
      treesitter = {
      enable = true;
      nixGrammars = true;
      nixvimInjections = true;

      };
      lsp = {
        enable = true;
	servers = {
	pylsp.enable = true;
	rnix-lsp.enable = true;
	gopls.enable = true;
	bashls.enable = true;
	cmake.enable = true;
	lua-ls.enable = true;
	nil_ls.enable = true;
	terraformls.enable = true;
	csharp-ls.enable = true;
	eslint.enable = true;
	html.enable = true;
	yamlls.enable = true;
        
	};
      };
      harpoon.enable = true;

      };
    };
}
