return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      ["<S-Tab>"] = { "select_prev", "fallback_to_mappings" },
      ["<Tab>"] = { "select_next", "fallback_to_mappings" },
      ["<C-n>"] = { "select_next", "fallback_to_mappings" },
    },
  },
}
