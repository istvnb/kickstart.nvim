-- lua/custom/plugins/ntt.lua

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ntt = {
          cmd = { "ntt", "lsp" },
          filetypes = {
            "ttcn",
            "ttcn3",
          },
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern(
              ".git",
              "package.ttcn"
            )(fname)
          end,
        },
      },
    },
  },
}
