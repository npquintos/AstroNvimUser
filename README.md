# AstroNvim User Configuration

A user configuration template for [AstroNvim](https://github.com/AstroNvim/AstroNvim)
If you are using Windows, used **fixedAstroNvimInit.lua** in this repository and replace
**init.lua** located in **AppData/Local/nvim**. There is a bug somewhere and runtimepath
is unable to locate the astronvim module, which is fixed at line 2 by updating
**vim.go.runtimepath**

## Modifications with respect to default AstroNvim
- replace neo-tree file explorer with oil. I believe oil is more functional
- added **leap**, which is the best navigation out there.
- used **bamboo** as colorscheme, which is the best colorscheme out there
- added **neorg**, the vimwiki replacement. I still like the vimwiki ease of use, though,
  but neorg just look so good!

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

#### Clone AstroNvim

```shell
git clone https://github.com/npquintos/AstroNvimUser ~/.config/nvim
```


#### Start Neovim

```shell
nvim
```
