" Last Change: 2020 avril 19

if exists('g:loaded_nvim_treesitter')
  finish
endif

augroup NvimTreesitter
augroup end

let g:loaded_nvim_treesitter = 1

lua << EOF
ts_installable_parsers = function()
  return table.concat(require'nvim-treesitter.configs'.available_parsers(), '\n')
end
require'nvim-treesitter'.setup()
EOF
