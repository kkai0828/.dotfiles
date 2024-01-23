local status_ok, sili = pcall(require, "silicon")
if not status_ok then
    return
end

sili.setup({
    --[[ output = '/Users/KaiXuan/Desktop/', ]]
    theme = 'Dracula',
    background = '#eff',
    shadow = {
        blur_radius = 0.0,
        offset_x = 0,
        offset_y = 0,
        color = '#555'
    },
})
