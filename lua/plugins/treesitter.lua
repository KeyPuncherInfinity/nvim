return {
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        main = "nvim-treesitter.configs",
        opts = {
            sync_install = true,
            auto_install = false,
            ensure_installed = {
               "c",
               "lua",
               "vimdoc",
               "javascript",
               "go",
            },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = true,
            },
            indent = {
                enable = true,
            },
        },
        config = function ()
            vim.wo.foldmethod = 'expr'
            vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        end
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
    },
    {
        "nvim-treesitter/nvim-treesitter-refactor",
        main = "nvim-treesitter.configs",
        opts = {
            refactor = {
                highlight_definitions = {
                    enable = true,
                    -- Set to false if you have an `updatetime` of ~100.
                    clear_on_cursor_move = true,
                },
                highlight_current_scope = {
                    enable = true,
                },
                smart_rename = {
                    enable = true,
                    keymaps = {
                        smart_rename = "grr",
                    },
                },
            },
        },
    },
}
