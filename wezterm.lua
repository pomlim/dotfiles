local wezterm = require 'wezterm';
wezterm.on("gui-startup", function(cmd)
  local _, _, window = wezterm.mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)
return {
    disable_default_key_bindings = false,
    default_domain = 'WSL:Ubuntu-22.04',
    color_scheme = "Nord (base16)",
    -- FONT
    font = wezterm.font({ family = 'Cascadia Code', harfbuzz_features = { 'liga=1' }, }),
    font_size = 15,
    -- GUI
    hide_tab_bar_if_only_one_tab = true,
    window_close_confirmation = 'NeverPrompt',
    keys = {
        -- Pane 
        { key = 'h', mods = 'CTRL|ALT', action = wezterm.action.ActivatePaneDirection 'Left', },
        { key = 'l', mods = 'CTRL|ALT', action = wezterm.action.ActivatePaneDirection 'Right', },
        { key = 'k', mods = 'CTRL|ALT', action = wezterm.action.ActivatePaneDirection 'Up', },
        { key = 'j', mods = 'CTRL|ALT', action = wezterm.action.ActivatePaneDirection 'Down', },
        { key = "'", mods = 'CTRL|ALT', action = wezterm.action.SplitHorizontal({domain = 'CurrentPaneDomain' }) },
        { key = '\\', mods = 'ALT', action = wezterm.action.SplitHorizontal({domain = 'CurrentPaneDomain' }) },
        { key = 's', mods = 'CTRL|ALT', action = wezterm.action.SplitVertical({domain = 'CurrentPaneDomain' }) },
        -- Tab
        { key = 't', mods = 'CTRL|ALT', action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },
        { key = '1', mods = 'CTRL|ALT', action = wezterm.action({ ActivateTab = 0 }) },
        { key = '2', mods = 'CTRL|ALT', action = wezterm.action({ ActivateTab = 1 }) },
        { key = '3', mods = 'CTRL|ALT', action = wezterm.action({ ActivateTab = 2 }) },
        { key = '4', mods = 'CTRL|ALT', action = wezterm.action({ ActivateTab = 3 }) },
        { key = 'p', mods = 'CTRL|ALT', action = wezterm.action({ ActivateTabRelative = 1 }) },
        { key = 'n', mods = 'CTRL|ALT', action = wezterm.action({ ActivateTabRelative = -1 }) },
        { key = 'w', mods = 'CTRL|ALT', action = wezterm.action.CloseCurrentTab { confirm = true }},
        -- Copy Mode
        { key = 'x', mods = 'CTRL|ALT', action = wezterm.action.ActivateCopyMode},
        { key = 'c', mods = 'CTRL|ALT', action = wezterm.action({ CopyTo = "Clipboard" }) },
        { key = 'v', mods = 'CTRL|ALT', action = wezterm.action({ PasteFrom = "Clipboard" }) },
        -- Palette
        { key = 'p', mods = 'ALT', action = wezterm.action.ActivateCommandPalette, },
    }

}
