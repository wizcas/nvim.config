local ok, neorg = pcall(require, "neorg")
if not ok then
  return
end

neorg.setup({
  load = {
    ["core.defaults"] = {},
    ["core.norg.dirman"] = {
      config = {
        workspaces = {
          compass = "~/OneDrive/notes/neorgs/compass",
          me = "~/OneDrive/notes/neorgs/wizcas",
          journal = "~/OneDrive/notes/neorgs/journal",
          todos = "~/OneDrive/notes/neorgs/todos",
        }
      }
    },
    ["core.norg.concealer"] = {
      config = {}
    },
    ["core.norg.completion"] = {
      config = {
        engine="nvim-cmp"
      }
    },
    ["core.norg.journal"] = {
      config = {}
    },
    ["core.gtd.base"] = {
      config = {
        workspace = "todos",
      }
    },
    ["core.integrations.telescope"] = {},
  }
})
