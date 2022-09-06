local status_ok, comment = pcall(require, "Comment")
if not status_ok then
  return
end

comment.setup {
  pre_hook = function(ctx)
    local U = require "Comment.utils"

    local treesitter_ok, treesitter_utils = pcall(require, 'ts_context_commentstring.utils')
    if treesitter_ok then
      local location = nil
      if ctx.ctype == U.ctype.block then
        location = treesitter_utils.get_cursor_location()
      elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
        location = treesitter_utils.get_visual_start_location()
      end

      return require("ts_context_commentstring.internal").calculate_commentstring {
        key = ctx.ctype == U.ctype.line and "__default" or "__multiline",
        location = location,
      }
    end
  end,
}
