return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  requires = { { "nvim-lua/plenary.nvim" } },
  config = function()
    require("harpoon"):setup()
  end,
  keys = {
    -- Append Harpoon list
    {
      "<leader>a",
      function()
        require("harpoon"):list():append()
      end,
    },
    -- View Harpoon list
    {

      "<leader>h",
      function()
        require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
      end,
    },
    -- Go to first buffer
    {
      "<leader>1",
      function()
        require("harpoon"):list():select(1)
      end,
    },
    -- Go to second buffer
    {
      "<leader>2",
      function()
        require("harpoon"):list():select(2)
      end,
    },
    -- Go to third buffer
    {
      "<leader>3",
      function()
        require("harpoon"):list():select(3)
      end,
    },
    -- Go to fourth buffer
    {
      "<leader>4",
      function()
        require("harpoon"):list():select(4)
      end,
    },
  },
}
