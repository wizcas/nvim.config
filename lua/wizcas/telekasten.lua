local home = vim.fn.expand('~/Dropbox/footprints/zk')
local ok, zk = pcall(require, 'telekasten')
if not ok then
  return
end

zk.setup({
  home = home,

  -- if true, telekasten will be enabled when opening a note within the configured home
  take_over_my_home = true,

  -- auto-set telekasten filetype: if false, the telekasten filetype will not be used
  --                               and thus the telekasten syntax will not be loaded either
  auto_set_filetype = true,

  -- dir names for special notes (absolute path or subdir name)
  dailies   = home .. '/daily',
  weeklies  = home .. '/weekly',
  templates = home .. '/templates',

  -- image (sub)dir for pasting
  -- dir name (absolute path or subdir name)
  -- or nil if pasted images shouldn't go into a special subdir
  image_subdir = 'static/img',

  -- markdown file extension
  extension = '.md',

  -- Generate note filenames. One of:
  -- 'title' (default) - Use title if supplied, uuid otherwise
  -- 'uuid' - Use uuid
  -- 'uuid-title' - Prefix title by uuid
  -- 'title-uuid' - Suffix title with uuid
  new_note_filename = 'uuid-title',
  -- file uuid type ('rand' or input for os.date()')
  uuid_type = '%Y-%m-%d-%H%M',
  -- UUID separator
  uuid_sep = '-',

  -- following a link to a non-existing note will create it
  follow_creates_nonexisting = true,
  dailies_create_nonexisting = true,
  weeklies_create_nonexisting = true,

  -- skip telescope prompt for goto_today and goto_thisweek
  journal_auto_open = false,

  -- template for new notes (new_note, follow_link)
  -- set to `nil` or do not specify if you do not want a template
  template_new_note = home .. '/templates/new.md',

  -- template for newly created daily notes (goto_today)
  -- set to `nil` or do not specify if you do not want a template
  template_new_daily = home .. '/templates/daily.md',

  -- template for newly created weekly notes (goto_thisweek)
  -- set to `nil` or do not specify if you do not want a template
  template_new_weekly = home .. '/templates/weekly.md',

  -- image link style
  -- wiki:     ![[image name]]
  -- markdown: ![](image_subdir/xxxxx.png)
  image_link_style = 'markdown',

  -- default sort option: 'filename', 'modified'
  sort = 'filename',

  -- integrate with calendar-vim
  plug_into_calendar = true,
  calendar_opts = {
    -- calendar week display mode: 1 .. 'WK01', 2 .. 'WK 1', 3 .. 'KW01', 4 .. 'KW 1', 5 .. '1'
    weeknm = 1,
    -- use monday as first day of week: 1 .. true, 0 .. false
    calendar_monday = 0,
    -- calendar mark: where to put mark for marked days: 'left', 'right', 'left-fit'
    calendar_mark = 'left-fit',
  },

  -- telescope actions behavior
  close_after_yanking = false,
  insert_after_inserting = true,

  -- tag notation: '#tag', ':tag:', 'yaml-bare'
  tag_notation = '#tag',

  -- command palette theme: dropdown (window) or ivy (bottom panel)
  command_palette_theme = 'ivy',

  -- tag list theme:
  -- get_cursor: small tag list at cursor; ivy and dropdown like above
  show_tags_theme = 'ivy',

  -- when linking to a note in subdir/, create a [[subdir/title]] link
  -- instead of a [[title only]] link
  subdirs_in_links = true,

  -- template_handling
  -- What to do when creating a new note via `new_note()` or `follow_link()`
  -- to a non-existing note
  -- - prefer_new_note: use `new_note` template
  -- - smart: if day or week is detected in title, use daily / weekly templates (default)
  -- - always_ask: always ask before creating a note
  template_handling = 'smart',

  -- path handling:
  --   this applies to:
  --     - new_note()
  --     - new_templated_note()
  --     - follow_link() to non-existing note
  --
  --   it does NOT apply to:
  --     - goto_today()
  --     - goto_thisweek()
  --
  --   Valid options:
  --     - smart: put daily-looking notes in daily, weekly-looking ones in weekly,
  --              all other ones in home, except for notes/with/subdirs/in/title.
  --              (default)
  --
  --     - prefer_home: put all notes in home except for goto_today(), goto_thisweek()
  --                    except for notes with subdirs/in/title.
  --
  --     - same_as_current: put all new notes in the dir of the current note if
  --                        present or else in home
  --                        except for notes/with/subdirs/in/title.
  new_note_location = 'smart',

  -- should all links be updated when a file is renamed
  rename_update_links = true,
})

vim.g.calendar_navi_label = '<,T,>';
vim.g.calendar_datetime = 'statusline';

-- Keybindings
local opts = { noremap = true }
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
-- keymap("n", "<leader>zn", "<cmd>lua require('telekasten').new_note()<CR>", opts)
-- keymap("n", "<leader>zf", "<cmd>lua require('telekasten').find_notes()<CR>", opts)
-- keymap("n", "<leader>zd", "<cmd>lua require('telekasten').find_daily_notes()<CR>", opts)
-- keymap("n", "<leader>zg", "<cmd>lua require('telekasten').search_notes()<CR>", opts)
-- keymap("n", "<leader>zz", "<cmd>lua require('telekasten').follow_link()<CR>", opts)
-- keymap("n", "<leader>za", "<cmd>lua require('telekasten').calendar()<CR>", opts)
-- on hasitation, show panel
-- keymap("n", "<leader>z", "<cmd>lua require('telekasten').panel()<CR>", opts)

-- Suggested key mappings

keymap("n", "<leader>zf", "<cmd>lua require('telekasten').find_notes()<CR>", opts)
keymap("n", "<leader>zd", "<cmd>lua require('telekasten').find_daily_notes()<CR>", opts)
keymap("n", "<leader>zg", "<cmd>lua require('telekasten').search_notes()<CR>", opts)
keymap("n", "<leader>zz", "<cmd>lua require('telekasten').follow_link()<CR>", opts)
keymap("n", "<leader>zT", "<cmd>lua require('telekasten').goto_today()<CR>", opts)
keymap("n", "<leader>zW", "<cmd>lua require('telekasten').goto_thisweek()<CR>", opts)
keymap("n", "<leader>zw", "<cmd>lua require('telekasten').find_weekly_notes()<CR>", opts)
keymap("n", "<leader>zn", "<cmd>lua require('telekasten').new_note()<CR>", opts)
keymap("n", "<leader>zN", "<cmd>lua require('telekasten').new_templated_note()<CR>", opts)
keymap("n", "<leader>zy", "<cmd>lua require('telekasten').yank_notelink()<CR>", opts)
keymap("n", "<leader>za", "<cmd>lua require('telekasten').show_calendar()<CR>", opts)
keymap("n", "<leader>zc", ":CalendarT<CR>", opts)
keymap("n", "<leader>zi", "<cmd>lua require('telekasten').paste_img_and_link()<CR>", opts)
keymap("n", "<leader>zt", "<cmd>lua require('telekasten').toggle_todo()<CR>", opts)
keymap("n", "<leader>zb", "<cmd>lua require('telekasten').show_backlinks()<CR>", opts)
keymap("n", "<leader>zF", "<cmd>lua require('telekasten').find_friends()<CR>", opts)
keymap("n", "<leader>zI", "<cmd>lua require('telekasten').insert_img_link({ i=true })<CR>", opts)
keymap("n", "<leader>zp", "<cmd>lua require('telekasten').preview_img()<CR>", opts)
keymap("n", "<leader>zm", "<cmd>lua require('telekasten').browse_media()<CR>", opts)
keymap("n", "<leader>#", "<cmd>lua require('telekasten').show_tags()<CR>", opts)

-- we could define [[ in **insert mode** to call insert link
-- inoremap [[ <ESC>:lua require('telekasten').insert_link()<CR>
-- alternatively: leader [
keymap("i", "<LocalLeader>[", "<ESC>:lua require('telekasten').insert_link({ i=true })<CR>", opts)
keymap("i", "<leader>zt", "<ESC>:lua require('telekasten').toggle_todo({ i=true })<CR>", opts)
keymap("i", "<leader>#", "<cmd>lua require('telekasten').show_tags({i = true})<cr>", opts)

-- show the panel when hasitated
keymap("n", "<leader>z", "<cmd>lua require('telekasten').panel()<CR>", opts)

-- the following are for syntax-coloring [[links]] and ==highlighted text==
-- (see the section about coloring in README.md)

-- " colors suitable for gruvbox color scheme
--  hi tklink ctermfg=72 guifg=#689d6a cterm=bold,underline gui=bold,underline
--  hi tkBrackets ctermfg=gray guifg=gray

-- " real yellow
-- hi tkHighlight ctermbg=yellow ctermfg=darkred cterm=bold guibg=yellow guifg=darkred gui=bold
-- " gruvbox
-- "hi tkHighlight ctermbg=214 ctermfg=124 cterm=bold guibg=#fabd2f guifg=#9d0006 gui=bold
--
-- hi link CalNavi CalRuler
-- hi tkTagSep ctermfg=gray guifg=gray
-- hi tkTag ctermfg=175 guifg=#d3869B
