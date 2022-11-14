require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.lsp"

require "user.folding"

in_wsl = os.getenv('WSL_DISTRO_NAME')
print(in_wsl)
