-- 初始化分页变量
local page_number = 1
local page_size = 9
local playlist = mp.get_property_native("playlist")

-- 定义一个函数，用于显示当前分页的 playlist
function show_paginated_playlist()
    local start_index = (page_number - 1) * page_size + 1
    local end_index = math.min(page_number * page_size, #playlist)

    local playlist_page = {}
    local relative_index = 0;
    for i = start_index, end_index do
        relative_index = relative_index + 1
        local entry = playlist[i]
        table.insert(playlist_page, relative_index .. ". 《" .. i .. "》" .. entry.filename)
    end

    local playlist_text = table.concat(playlist_page, "\n")
    mp.osd_message(playlist_text, 5)
end

-- 处理按键事件
function on_keypress(key)
    if key == "RIGHT" then
        page_number = page_number + 1
        show_paginated_playlist()
    elseif key == "LEFT" then
        page_number = math.max(1, page_number - 1)
        show_paginated_playlist()
    elseif tonumber(key) then
        local index = tonumber(key)
        if index and index >= 1 and index <= #playlist then
            index = (page_number - 1) * page_size + index

            mp.commandv("playlist-unshuffle")
            mp.commandv("playlist-play-index", index-1)
            mp.commandv("playlist-shuffle")
        end
    end
end


-- 绑定一个键来触发选择歌曲的操作
mp.add_key_binding("h", "select-and-play-song", show_paginated_playlist)
mp.add_forced_key_binding("a", "keypress/RIGHT", function() on_keypress("RIGHT") end)
mp.add_forced_key_binding("k", "keypress/LEFT", function() on_keypress("LEFT") end)

-- 绑定数字键（1 到 9）到处理函数
for i = 1, 9 do
    mp.add_forced_key_binding(tostring(i), "keypress/" .. tostring(i), function() on_keypress(tostring(i)) end)
end
