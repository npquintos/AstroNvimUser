# AstroNvim User Configuration

A user configuration template for [AstroNvim](https://github.com/AstroNvim/AstroNvim)
If you are using Windows, use **fixedAstroNvimInit.lua** in this repository and replace
**init.lua** located in **AppData/Local/nvim** (don't forget to rename it **init.lua**). There is a bug somewhere and runtimepath
is unable to locate the astronvim module, which is fixed at line 2 by updating
**vim.go.runtimepath**

## Modifications with respect to default AstroNvim
- replace **neo-tree** file explorer with **oil**. I believe **oil** is more functional
- added **flash**, which is the best navigation plugin out there.
- used **bamboo** as colorscheme, which is most pleasant to the eyes.
- added **neorg**, the vimwiki replacement. I still like the vimwiki ease of use, though
- replaced **nvim-cmp** with **coq**, which is a better completion plugin
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
