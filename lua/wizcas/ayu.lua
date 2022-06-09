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
  mirage = false,
  overrides = {
    LineNr = { fg = colors.guide_active },
    SpecialKey = { fg = colors.guide_active },
  },
})
