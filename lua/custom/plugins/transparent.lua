return {
  "xiyaowong/nvim-transparent",
  version = "*",
  config = function ()
    require('transparent').setup {
      enable = true, -- boolean: enable transparent
      extra_groups = { -- table/string: additional groups that should be cleared
        -- In particular, when you set it to 'all', that means all available groups

        -- example of akinsho/nvim-bufferline.lua
        "BufferLineTabClose",
        "BufferlineBufferSelected",
        "BufferLineFill",
        "BufferLineBackground",
        "BufferLineSeparator",
        "BufferLineIndicatorSelected",
      },
      exclude = {}, -- table: groups you don't want to clear
      ignore_linked_group = true, -- boolean: don't clear a group that links to another group
    }
  end,
}
