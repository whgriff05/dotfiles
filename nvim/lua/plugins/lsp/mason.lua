return {
    "williamboman/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
           "bashls",
           "marksman",
           "pyright",
           "lua_ls",
           "clangd",
        },
    },
    dependencies = {
        {
            "williamboman/mason.nvim",
            opts = {
                ui = {
                    icons = {
                        package_installed = "+",
                        package_pending = "~",
                        package_uninstalled = "X",
                    },
                },
            },
        },
        "neovim/nvim-lspconfig",
    },
}
