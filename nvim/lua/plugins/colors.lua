return {
    {
        "JoosepAlviste/palenightfall.nvim",
        config = function()
            vim.cmd.colorscheme "palenightfall"
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            theme = "palenight",
        }
    },
}
