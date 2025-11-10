return {
  {
    "LazyVim/LazyVim",
    opts = function()
      -- Aplicar transparencia después de cargar cualquier colorscheme
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "*",
        callback = function()
          local hl_groups = {
            "Normal",
            "NormalNC",
            "NormalFloat",
            "NormalSB",
            "SignColumn",
            "LineNr",
            "Folded",
            "NonText",
            "SpecialKey",
            "VertSplit",
            "EndOfBuffer",
            "CursorLine",
            "CursorLineNr",
            "StatusLine",
            "StatusLineNC",
            "Pmenu",
            "PmenuSel",
            "TabLine",
            "TabLineFill",
            "TabLineSel",
            "WinSeparator",
          }

          for _, name in ipairs(hl_groups) do
            vim.cmd(string.format("highlight %s guibg=NONE ctermbg=NONE", name))
          end

          -- Ajustar colores para mejor contraste con fondo transparente
          -- Numeración de líneas: gris claro
          vim.cmd("highlight LineNr guifg=#9ca3af guibg=NONE")
          -- Numeración de línea actual: rosa salmon del tema horizon
          vim.cmd("highlight CursorLineNr guifg=#f09483 gui=bold guibg=NONE")

          -- Comentarios: gris más claro para mejor contraste
          vim.cmd("highlight Comment guifg=#8b92a0 gui=italic")

          -- Neo-tree y archivos: colores más claros
          vim.cmd("highlight NeoTreeFileName guifg=#c5cdd8")
          vim.cmd("highlight NeoTreeDirectoryName guifg=#a8b5c9 gui=bold")
          vim.cmd("highlight NeoTreeDirectoryIcon guifg=#a8b5c9")
          vim.cmd("highlight NeoTreeRootName guifg=#f09483 gui=bold")
          vim.cmd("highlight NeoTreeFileIcon guifg=#9ca3af")

          -- Aclarar colores oscuros generales del tema
          vim.cmd("highlight NonText guifg=#7a8190 guibg=NONE")
          vim.cmd("highlight SpecialKey guifg=#7a8190 guibg=NONE")
          vim.cmd("highlight EndOfBuffer guifg=#7a8190 guibg=NONE")
        end,
      })

      -- Aplicar transparencia inmediatamente
      vim.schedule(function()
        vim.cmd([[
          highlight Normal guibg=NONE ctermbg=NONE
          highlight NormalNC guibg=NONE ctermbg=NONE
          highlight NormalFloat guibg=NONE ctermbg=NONE
          highlight SignColumn guibg=NONE ctermbg=NONE
          highlight LineNr guifg=#9ca3af guibg=NONE
          highlight Folded guibg=NONE ctermbg=NONE
          highlight NonText guifg=#7a8190 guibg=NONE
          highlight SpecialKey guifg=#7a8190 guibg=NONE
          highlight VertSplit guibg=NONE ctermbg=NONE
          highlight EndOfBuffer guifg=#7a8190 guibg=NONE
          highlight CursorLine guibg=NONE ctermbg=NONE
          highlight CursorLineNr guifg=#f09483 gui=bold guibg=NONE
          highlight StatusLine guibg=NONE ctermbg=NONE
          highlight StatusLineNC guibg=NONE ctermbg=NONE
          highlight Pmenu guibg=NONE ctermbg=NONE
          highlight PmenuSel guibg=NONE ctermbg=NONE
          highlight TabLine guibg=NONE ctermbg=NONE
          highlight TabLineFill guibg=NONE ctermbg=NONE
          highlight TabLineSel guibg=NONE ctermbg=NONE
          highlight WinSeparator guibg=NONE ctermbg=NONE

          highlight Comment guifg=#8b92a0 gui=italic
          highlight NeoTreeFileName guifg=#c5cdd8
          highlight NeoTreeDirectoryName guifg=#a8b5c9 gui=bold
          highlight NeoTreeDirectoryIcon guifg=#a8b5c9
          highlight NeoTreeRootName guifg=#f09483 gui=bold
          highlight NeoTreeFileIcon guifg=#9ca3af
        ]])
      end)
    end,
  },
}
