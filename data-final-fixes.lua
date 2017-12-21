for name in pairs(data.raw) do
    for _, object in pairs(data.raw[name]) do
        if (object.icon or object.icons) and not object.icon_size then
            object.icon_size = 32
        end
    end
end
