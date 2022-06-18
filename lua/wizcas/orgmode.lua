local ok, orgmode = pcall(require, 'orgmode')
if not ok then
  return
end

orgmode.setup_ts_grammar()
orgmode.setup({
  org_agenda_files = { '~/OneDrive/notes/orgs/**/*' },
  org_default_notes_file = '~/OneDrive/notes/orgs/wizcas.org',
  org_todo_keywords = { 'TODO(t)', 'WIP(w)', '|', 'DONE(d)' },
  mappings = {
    org = {
      org_toggle_checkbox = '<leader>ov',
    }
  },
  org_capture_templates = {
    t = {
      description = 'Tasks',
      template = '* TODO %^{TODO}\n%U\n',
      target = '~/OneDrive/notes/orgs/wizcas.org',
    },
    j = {
      description = 'Journals',
      template = '* %^{TITLE}\n%U\r\n---\n',
      target = '~/OneDrive/notes/orgs/journals.org',
    }
  }
})

local ok2, headlines = pcall(require, 'headlines')
if not ok2 then
  return
end

headlines.setup()
