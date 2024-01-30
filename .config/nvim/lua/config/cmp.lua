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
