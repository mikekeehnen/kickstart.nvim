return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  requires = { { "nvim-lua/plenary.nvim" } },
  keys = {
    -- Append Harpoon list
    {
      "<C-a>",
      function()
        require("harpoon"):list():append()
      end,
    },
    -- View Harpoon list
    {

      "<C-h>",
      function()
        local harpoon = require("harpoon")
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
    },
    -- Go to first buffer
    {
      "<C-1>",
      function()
        require("harpoon"):list():select(1)
      end,
    },
    -- Go to second buffer
    {
      "<C-2>",
      function()
        require("harpoon"):list():select(2)
      end,
    },
    -- Go to third buffer
    {
      "<C-3>",
      function()
        require("harpoon"):list():select(3)
      end,
    },
    -- Go to fourth buffer
    {
      "<C-4>",
      function()
        require("harpoon"):list():select(4)
      end,
    },
  },
}
