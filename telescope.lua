
    pickers = {
      find_files = {
        hidden = true,
        _untracked = true,
        showlayout_strategy = "center",
        layout_config = { width = 0.80, height = 0.80, preview_width = nil, prompt_position = "top" },
      },
      live_grep = {
        --@usage don't include the filename in the search results
        layout_config = { height = 0.99, width = 0.9, preview_cutoff = 120, preview_width = 0.6, prompt_position = "top" },
        layout_strategy = "horizontal",
        only_sort_text = true,
      },
      grep_string = {
        only_sort_text = true,
      },
      buffers = {
        initial_mode = "normal",
        mappings = {
          i = {
            ["<C-d>"] = actions.delete_buffer,
          },
          n = {
            ["dd"] = actions.delete_buffer,
          },
        },
      },
      planets = {
        show_pluto = true,
        show_moon = true,
      },
      git_files = {
        hidden = true,
        _untracked = true,
        showlayout_strategy = "center",
        layout_config = { width = 0.80, height = 0.80, preview_width = nil, prompt_position = "top" },
      },
      colorscheme = {
        enable_preview = true,
      },
    },
