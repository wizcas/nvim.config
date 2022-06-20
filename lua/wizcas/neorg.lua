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
          compass = "~/Dropbox/footprints/neorgs/compass",
          me = "~/Dropbox/footprints/neorgs/wizcas",
          journal = "~/Dropbox/footprints/neorgs/journal",
          todos = "~/Dropbox/footprints/neorgs/todos",
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
