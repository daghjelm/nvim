require('formatter').setup({
  logging = false,
  filetype = {
    javascript = {
        -- prettierd
       function()
          return {
            exe = "prettierd",
            args = {vim.api.nvim_buf_get_name(0)},
            stdin = true
          }
        end
    },
    rust = {
      function()
        return {
          exe = "rustfmt",
          args = {"--emit=stdout"},
          stdin = true
        }
    end
    },
    go = {
      function()
        return {
          exe = "gofmt",
          args = {},
          stdin = true
        }
      end
    },
    -- other formatters ...
  }
})
