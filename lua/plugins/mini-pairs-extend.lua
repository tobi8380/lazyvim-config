return {
  "nvim-mini/mini.pairs",
  opts = {
    mappings = {
      -- Add dollar sign pairing for latex
      -- ["$"] = { action = "open", pair = "$$", neigh_pattern = "[^\\]." },
      ["$"] = { action = "closeopen", pair = "$$", neigh_pattern = "[^\\].", register = { cr = true } },
    },
  },
}
