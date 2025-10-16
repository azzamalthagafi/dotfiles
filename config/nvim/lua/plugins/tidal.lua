return {
  "azzamalthagafi/tidal.nvim",
  branch = "develop",
  opts = {
    -- Your configuration here
    -- See configuration section for defaults

    --- Configure TidalLaunch command
    boot = {
      tidal = {
        -- cmd = "ghci",
        -- args = {
        --   "-v0",
        -- },
        file = "~/.config/tidal/BootTidal.hs",
        enabled = true,
        highlight = {
          autostart = true,
          -- styles = {
          --   osc = {
          --     ip = "127.0.0.1",
          --     port = 3335,
          --   },
          --   -- [Tidal ID] -> hl style
          --   custom = {
          --     ["drums"] = { bg = "#e7b9ed", foreground = "#000000" },
          --     ["2"] = { bg = "#b9edc7", foreground = "#000000" },
          --   },
          --   global = { baseName = "CodeHighlight", style = { bg = "#7eaefc", foreground = "#000000" } },
          -- },
          events = {
            osc = {
              ip = "127.0.0.1",
              port = 6013,
            },
          },
          fps = 30,
        },
      },
      sclang = {
        --- Command to launch SuperCollider
        cmd = "/Applications/SuperCollider.app/Contents/MacOS/sclang",
        args = {},
        --- SuperCollider boot file
        file = "~/.config/tidal/BootSuperDirt.scd",
        enabled = true,
      },
      split = "v",
    },
    --- Default keymaps
    --- Set to false to disable all default mappings
    --- @type table | nil
    mappings = {
      send_line = { mode = { "i", "n" }, key = "<S-CR>" },
      send_visual = { mode = { "x" }, key = "<S-CR>" },
      send_block = { mode = { "i", "n", "x" }, key = "<M-CR>" },
      send_node = { mode = "n", key = "<leader><CR>" },
      send_silence = { mode = "n", key = "<leader>d" },
      send_hush = { mode = "n", key = "<leader><Esc>" },
    },
    --- Configure highlight applied to selections sent to tidal interpreter
    selection_highlight = {
      --- Highlight definition table
      --- see ':h nvim_set_hl' for details
      --- @type vim.api.keyset.highlight
      highlight = { link = "IncSearch" },
      --- Duration to apply the highlight for
      timeout = 150,
    },
  },
}
