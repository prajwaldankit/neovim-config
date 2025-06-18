return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = { "lua", "vim", "javascript", "html", "python", "typescript", "ruby", "c", "cpp", "css", "tsx" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
        auto_install = true
      })
    end
  }
}
