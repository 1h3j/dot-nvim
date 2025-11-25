vim.o.guifont = "0xProto Nerd Font:h10"
vim.g.neovide_padding_top = 8
vim.g.neovide_padding_bottom = 16
vim.g.neovide_padding_left = 16
vim.g.neovide_padding_right = 16
vim.opt.linespace = 0
vim.g.neovide_scale_factor = 1.0

vim.g.neovide_smooth_scroll = true

vim.g.neovide_opacity = 1.0
vim.g.neovide_normal_opacity = 1.0
vim.g.neovide_floating_opacity = 0.5
vim.g.neovide_window_blurred = true
vim.o.winblend = 60

vim.g.neovide_floating_blur_amount_x = 8.0
vim.g.neovide_floating_blur_amount_y = 8.0
vim.g.neovide_floating_corner_radius = 1.0

vim.g.neovide_cursor_animation_length = 0.25

vim.g.neovide_cursor_vfx_particle_density = 5.0
vim.g.neovide_cursor_vfx_particle_curl = 10.0

vim.g.neovide_cursor_animate_in_insert_mode = true
vim.g.neovide_cursor_smooth_blink = true

vim.api.nvim_create_autocmd("InsertEnter", {
  callback = function()
    vim.g.neovide_cursor_vfx_mode = {""}
  end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function()
    vim.g.neovide_cursor_vfx_mode = {"wireframe"}
  end,
})
