-- Filename: ~/github/dotfiles-latest/neovim/neobean/lua/plugins/telescope-frecency.lua
-- ~/github/dotfiles-latest/neovim/neobean/lua/plugins/telescope-frecency.lua

--[=====[
https://github.com/nvim-telescope/telescope-frecency.nvim

This plugins keeps a score of my recently access files through telescope, and 
shows the ones I se the most at the top of the list

It requires telescope, so don't uninstall telescope

For questions read the docs
https://github.com/nvim-telescope/telescope-frecency.nvim/blob/master/doc/telescope-frecency.txt
--]=====]

return {
  "nvim-telescope/telescope-frecency.nvim",
  config = function()
    require("telescope").setup({
      extensions = {
        frecency = {
          show_scores = true,
          -- Show the path of the active filter before file paths.
          -- So if I'm in the `dotfiles-latest` directory it will show me that
          -- before the name of the file
          show_filter_column = false,
        },
      },
    })
    require("telescope").load_extension("frecency")
  end,
}
