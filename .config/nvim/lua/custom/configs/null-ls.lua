local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  b.formatting.prettierd.with {
    filetypes = {
      "javascript",
      "typescript",
      "css",
      "scss",
      "html",
      "json",
      "yaml",
      "markdown",
      "graphql",
      "md",
      "txt",
      "code-snippets",
    },
  },

  b.diagnostics.cspell.with {
    extra_args = {
      "--config",  "~/.config/nvim/lua/custom/configs/cspell.json",
    },
  },
  b.code_actions.cspell,

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
