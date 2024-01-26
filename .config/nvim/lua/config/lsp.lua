require("lspconfig").rust_analyzer.setup {
    settings = {
        ["rust-analyzer"] = {
            check = {
                command = "clippy";
            },
            diagnostics = {
                enable = true;
            }
        }
    }
}



require("cmp").setup({
  snippet = {
    expand = function(args)
         vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  sources =  {
    { name = "nvim_lsp" },
    { name = "vsnip" },
    { name = "path" },
    { name = "buffer" },
  },
})
