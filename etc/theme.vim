" See: https://github.com/sainnhe/gruvbox-material/
" Colorscheme -------- {{{
syntax enable
let g:gruvbox_material_background = 'soft'
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_disable_italic_comment = 1
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_transparent_background = 0
let g:gruvbox_material_diagnostic_text_highlight = 1
let g:gruvbox_material_diagnostic_line_highlight = 1
let g:gruvbox_material_diagnostic_virtual_text = 'colored'
let g:gruvbox_material_current_word = 'bold'
let g:gruvbox_material_better_performance = 1
if !has('gui_running')
  set t_Co=256
endif
if has('termguicolors')
  set termguicolors
endif
set showmatch
set visualbell
set showtabline=2
set signcolumn="4"
set background=light
set noshowmode
set laststatus=2
colorscheme gruvbox-material
" }}}
" See: https://github.com/liuchengxu/eleline.vim/
" Eleline -------- {{{
let g:eleline_powerline_fonts = 1
" }}}
