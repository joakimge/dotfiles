config.load_autoconfig(False)
# Ask sites to serve their own dark CSS

{"DEFAULT": "https://www.google.com/search?q={}"}

# THEME
# Don't force-invert Google / DuckDuckGo — use their native (blue-linked) dark theme
c.colors.webpage.preferred_color_scheme = "dark"
config.set("colors.webpage.darkmode.enabled", False, "*://*.google.com/*")
config.set("colors.webpage.darkmode.enabled", False, "*://*.google.no/*")
config.set("colors.webpage.darkmode.enabled", False, "*://duckduckgo.com/*")
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.algorithm = "lightness-cielab"
c.colors.webpage.darkmode.policy.images = "never"
c.colors.webpage.darkmode.policy.page = "smart"

# COLORS
c.colors.statusbar.insert.bg = "#333648"
c.colors.statusbar.insert.fg = "#e1e3e4"

# COMMANDS & ALIASES
config.bind('<Ctrl-n>', 'completion-item-focus --history next', mode='command')
config.bind('<Ctrl-p>', 'completion-item-focus --history prev', mode='command')

c.aliases['y'] = 'open https://www.youtube.com'

c.url.searchengines['!pkg'] = 'https://search.nixos.org/packages?channel=26.05&query={}'

# KEYBINDS

