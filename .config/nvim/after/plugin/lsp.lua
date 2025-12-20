local lsp_zero = require('lsp-zero')
local lspconfig = require('lspconfig')

-- -- Define global capabilities
-- local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- capabilities.workspace = capabilities.workspace or {}
-- capabilities.workspace.didChangeWatchedFiles = { dynamicRegistration = true }

lsp_zero.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

-- lsp_zero.extend_lspconfig({
--   capabilities = capabilities
-- })

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'rust_analyzer'},
    handlers = {
        -- function(server)
        --     lsp_zero.default_setup(server, { capabilities = capabilities })
        -- end,
        lsp_zero.default_setup,
        lua_ls = function()
            local lua_opts = lsp_zero.nvim_lua_ls()
            -- lua_opts.capabilities = capabilities
            require('lspconfig').lua_ls.setup(lua_opts)
        end,
        html = function()
            lspconfig.html.setup({
                filetypes = { "html", "templ" },
            })
        end,
        htmx = function()
            lspconfig.htmx.setup({
                filetypes = { "html", "templ" },
            })
        end,
        tailwindcss = function()
            lspconfig.tailwindcss.setup({
                filetypes = { "templ", "astro", "javascript", "typescript", "react" },
                settings = {
                    tailwindCSS = {
                        includeLanguages = {
                            templ = "html",
                        },
                    },
                }
            })
            -- lspconfig.htmx.setup({
            --     filetypes = { "templ", "astro", "javascript", "typescript", "react" },
            --     init_options = { userLanguages = { templ = "html" } },
            -- })
        end,
        gdtoolkit = function()
            local root = vim.fs.dirname(vim.fs.find('project.godot', { upward = true })[1])
            lspconfig.gdscript.setup{cmd = {"ncat", "localhost","6005"}, root_dir = function()
                return root
            end
        }
        end,
    }
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
  sources = {
    {name = 'path'},
    {name = 'nvim_lsp'},
    {name = 'nvim_lua'},
    {name = 'luasnip', keyword_length = 2},
    {name = 'buffer', keyword_length = 3},
  },
  formatting = lsp_zero.cmp_format(),
  mapping = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
})
