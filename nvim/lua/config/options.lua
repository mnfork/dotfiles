-- Tabs and Spaces
vim.opt.expandtab = true     -- Use spaces instead of tabs
vim.opt.tabstop = 2          -- Number of spaces to use for a tab
vim.opt.softtabstop = 2      -- Number of spaces that a tab counts for during editing

-- UI Config
vim.wo.number = true         -- Activate line numbers as a default (see autocmds for line number toggle)
vim.wo.relativenumber = true -- Activate relative numbers as a default (see autocmds for line number toggle)
vim.opt.cursorline = true    -- Highlight the cursor line
vim.opt.showcmd = true       -- Ensure that commands are shown in the last line of the screen
vim.opt.showmatch = true     -- Briefly jump to a matching enclosure when one is inserted
vim.opt.showmode = false     -- Don't show mode because we have a statur bar instead

-- Line Display
vim.opt.linebreak = true     -- Automatically insert visual linebreaks into view when line exceeds view width
vim.opt.wrap = true          -- Ensure that lines can be wrapped

-- General Behaviors
vim.opt.wildmenu = true      -- Ensure that the command line works with wild cards
vim.opt.confirm = true       -- Confirm to save changes before exiting modified buffer
vim.opt.undolevels = 1000
vim.smartindent = true       -- Insert indents automatically

-- Search Behaviors
vim.opt.incsearch = true     -- Ensure that search proceeds while typing
vim.opt.hlsearch = true      -- Ensure that matches are highlighted

-- Splitting Behaviors
vim.opt.splitbelow = true    -- Put new windows below the current one
vim.opt.splitright = true    -- Put new windows right of the current one
