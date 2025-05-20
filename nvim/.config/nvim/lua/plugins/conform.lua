return {
    "stevearc/conform.nvim",
    opts = function()
        local_opts = {
            formatters_by_ft = {
                javascript = {"eslint_d", "prettier"},
                typescript = {"eslint_d", "prettier"},
                javascriptreact = {"eslint_d", "prettier"},
                typescriptreact = {"eslint_d", "prettier"},
                svelte = {"prettier"},
                css = {"prettier"},
                html = {"prettier"},
                json = {"prettier"},
                yaml = {"prettier"},
                markdown = {"prettier"},
                graphql = {"prettier"},
                liquid = {"prettier"},
                lua = {"stylua"},
                python = {"flake8"},
                go = {"gofumpt"}
            },
            format_on_save = {
                timeout_ms = 2000,
                lsp_fallback = true
            }
        }
        return local_opts
    end
}
