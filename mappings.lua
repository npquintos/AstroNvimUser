-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<right>"] = { ":let linenum=getpos('.')[1]|:wincmd l|:call cursor(linenum,0)<cr>", desc = "go to same line number at right pane" },
    ["<left>"] = { ":let linenum=getpos('.')[1]|:wincmd h|:call cursor(linenum,0)<cr>", desc = "go to same line number at left pane" },
    ["<up>"] = { ":let linenum=getpos('.')[1]|:wincmd k|:call cursor(linenum,0)<cr>", desc = "go to same line number at upper pane" },
    ["<down>"] = { ":let linenum=getpos('.')[1]|:wincmd j|:call cursor(linenum,0)<cr>", desc = "go to same line number at lower pane" },
    ["o"] = { "%", desc = "jump to opening/closing pair" },
    ["T"] = { "zt", desc = "move current line to top" },
    ["E"] = { "$", desc = "move cursor to end of line" },
    ["B"] = { "^", desc = "move cursor to beginning of line" },
    ["P"] = { "]pcf=def<esc>A:<cr>", desc = "convert to function def" },
    [">"] = { ">gv", desc = "retain selection after indentation" },
    ["<"] = { "<gv", desc = "retain selection after un-indentation" },
    ["gf"] = { "?def <cr>w", desc = "go to start of function" },
    ["gb"] = { "?def <cr>w*", desc = "go to calling function" },
    ["<A-h>"] = { ":bprev<cr>", desc = "go to previous buffer" },
    ["<A-l>"] = { ":bnext<cr>", desc = "go to next buffer" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
