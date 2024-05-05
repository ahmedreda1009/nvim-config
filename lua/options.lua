require "nvchad.options"

-- add yours here!

local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
o.relativenumber = true
o.wrap = false

-- ##################################
-- open the new created file
local api = require "nvim-tree.api"
api.events.subscribe(api.events.Event.FileCreated, function(file)
  vim.cmd("edit " .. file.fname)
end)
