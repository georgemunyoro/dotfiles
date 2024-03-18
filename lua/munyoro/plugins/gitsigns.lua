local gs_setup, gitsigns = pcall(require, "gitsigns")
if not gs_setup then
  return
end

gitsigns.setup()
