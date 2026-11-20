-- Line numbering configuration
vim.opt.number = true          -- Show the absolute line number for the current line
vim.opt.relativenumber = true  -- Show relative line numbers for all other lines

-- Search configuration
vim.opt.ignorecase = true      -- Ignore case when searching text
vim.opt.smartcase = true       -- Override ignorecase if search contains uppercase letters

vim.opt.clipboard = "unnamedplus"


local function make_transparent()
  local groups = {
    "Normal",
    "NormalNC",
    "NormalFloat",
    "FloatBorder",
    "SignColumn",
    "EndOfBuffer",
    "MsgArea",
    "NvimTreeNormal",
    "NeoTreeNormal",
    "NeoTreeNormalNC",
    "TelescopeNormal",
    "TelescopeBorder",
  }

  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
  end
end

-- Apply immediately and re-apply if the colorscheme changes
make_transparent()
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = make_transparent,
})
