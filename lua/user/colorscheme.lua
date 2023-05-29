local my_colorscheme = "gruvbox"
--vim.cmd "colorscheme onedark" 
vim.g.onedarker_italic_keywords = true
vim.g.onedarker_italic_functions = false
vim.g.onedarker_italic_comments = true
vim.g.onedarker_italic_loops = true

vim.g.onedarker_italic_conditionals = true
local status, _ = pcall(vim.cmd,"colorscheme " ..  my_colorscheme);
pcall(vim.cmd,"TransparentEnable");

  if not status then
  vim.notify("colorscheme " .. my_colorscheme .. " not found!")
  return 
end


