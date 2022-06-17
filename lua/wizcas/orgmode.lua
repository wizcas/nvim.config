local ok, orgmode = pcall(require, 'orgmode')
if not ok then
  return
end

orgmode.setup_ts_grammar()
orgmode.setup({
  org_agenda_files = { '~/OneDrive/notes/orgs/**/*' },
  org_default_notes_file = '~/OneDrive/notes/org/wizcas.org'
})
