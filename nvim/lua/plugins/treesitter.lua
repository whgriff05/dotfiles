return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "main",
    build = ":TSUpdate",
    config = function()
        local ts = require ("nvim-treesitter")
        ts.install({
            "c",
            "cpp",
            "lua",
            "python",
            "make",
            "markdown",
            "markdown_inline",
            "latex",
        })
    end
}

