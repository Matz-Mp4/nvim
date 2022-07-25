local my_colorscheme = "onedarker"
--vim.cmd "colorscheme onedark" 
local status, _ = pcall(vim.cmd,"colorscheme " ..  my_colorscheme);

  if not status then
  vim.notify("colorscheme " .. my_colorscheme .. " not found!")
  return 
end


