require'nvim-treesitter.configs'.setup {
  -- 安装 language parser
  -- :TSInstallInfo 命令查看支持的语言
  ensure_installed = {"html", "css", "vim", "go", "python", "lua", "javascript", "typescript", "tsx"},
  -- 启用代码高亮功能
  highlight = {
    enable = true,
  },
}
