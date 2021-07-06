" See: https://github.com/norcalli/snippets.nvim
" VimScript configuration -------- {{{
inoremap <c-k> <cmd>lua return require'snippets'.expand_or_advance(1)<CR>
inoremap <c-j> <cmd>lua return require'snippets'.advance_snippet(-1)<CR>
" }}}
" Lua configuration -------- {{{
require'snippets'.snippets = {
  -- The _global dictionary acts as a global fallback.
  -- If a key is not found for the specific filetype, then
  --  it will be lookup up in the _global dictionary.
  _global = {
    -- Insert a basic snippet, which is a string.
    todo = "TODO(drazulay): ";
    epoch = function() return os.time() end;
    note = [[NOTE(${1=io.popen("id -un"):read"*l"}): ]];
    copyleft = U.force_comment [[Copyleft :) Daniel R. Azulay, ${=os.date("%Y")}]];
    copyright = U.force_comment [[Copyright (c) Daniel R. Azulay, ${=os.date("%Y")}]];
  };
  js = {
    import = [[import {} from "${=vim.fn.expand("%:t"):upper()}"]];
  };
}
" }}}
