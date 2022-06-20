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
          todo = "~/Dropbox/footprints/neorgs/todo",
          tmp = "~/Dropbox/footprints/neorgs/tmp",
        }
      }
    },
    ["core.norg.concealer"] = {
      config = {}
    },
    ["core.norg.completion"] = {
      config = {
        engine = "nvim-cmp"
      }
    },
    ["core.norg.journal"] = {
      config = {
        workspace = "me",
        strategy = "flat",
      }
    },
    ["core.gtd.base"] = {
      config = {
        workspace = "todo",
      }
    },
    ["core.integrations.telescope"] = {},
  }
})
