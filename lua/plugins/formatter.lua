return {
    "sbdchd/neoformat",
    config = function()
        vim.api.nvim_create_augroup("fmt", { clear = true })

        vim.api.nvim_create_autocmd("BufWritePre", {
            group = "fmt",
            pattern = "*.js",
            callback = function()
                vim.cmd("undojoin | Neoformat")
            end,
        })

    end

}
