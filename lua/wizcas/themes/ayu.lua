local ok1, ayu = pcall(require, "ayu")
if not ok1 then
  return
end

local ok2, colors = pcall(require, "ayu.colors")
if not ok2 then
  return
end
colors.generate()

ayu.setup({
  mirage = true,
  overrides = {
    LineNr = { fg = colors.guide_active },
    SpecialKey = { fg = colors.guide_active },
    IncSearch = { fg = colors.black, bg = colors.accent },
  },
})

