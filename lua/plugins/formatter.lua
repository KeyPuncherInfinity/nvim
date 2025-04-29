return {
    "sbdchd/neoformat",
    config = function()
        vim.api.nvim_create_augroup("fmt", { clear = true })

        -- Format on save for go files using gofmt
        vim.api.nvim_create_autocmd("BufWritePre", {
            group = "fmt",
            pattern = "*.js",
            callback = function()
                -- vim.cmd("undojoin | Neoformat")
                vim.cmd("Neoformat")
            end,
        })


        -- Format on save for go files using gofmt
        vim.api.nvim_create_autocmd("BufWritePre", {
            group = "fmt",
            pattern = "*.go",
            callback = function()
                -- vim.cmd("undojoin | Neoformat")
                vim.cmd("Neoformat")
            end,
        })
    end

}
