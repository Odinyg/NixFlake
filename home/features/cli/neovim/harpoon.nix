{
  programs.nixvim.plugins.harpoon = { enable = true; };
  programs.nixvim.maps = {
    normal = {
      "<leader>mm" = {
        desc = "Mark Menu";
        action = ":lua require('harpoon.ui').toggle_quick_menu()<CR>";
        silent = true;
      };
      "<leader>ma" = {
        desc = "Mark File";
        action = ":lua require('harpoon.mark').add_file()<CR>";
        silent = true;
      };
      "<leader>mn" = {
        desc = "Next Mark";
        action = ":lua require('harpoon.ui').nav_next()<CR>";
        silent = true;
      };
      "<leader>mp" = {
        desc = "Prev Mark";
        action = ":lua require('harpoon.ui').nav_prev()<CR>";
        silent = true;
      };
    };
  };
}
