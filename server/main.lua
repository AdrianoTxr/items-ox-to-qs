local input = require("input/items")
local list = 'ItemList = {\n'

RegisterCommand("items", function(source, args, rawCommand)
    for i, item in pairs(input) do
        if item.description == nil then item.description = '""' end
        if item.label == nil then item.label = i end
        if item.weight == nil then item.weight = 1 end
        if item.stack == nil then item.stack = nil end
        if item.close == nil then item.close = false end
        list = list .. '	["' .. i .. '"] = {\n		["name"] = "' .. i ..
                   '",\n		["label"] = "' .. item.label ..
                   '",\n		["weight"] = ' .. item.weight ..
                   ',\n		["type"] = "item",\n		["image"] = "' .. i ..
                   '.png",\n		["unique"] = false,\n		["useable"] = true,\n		["shouldClose"] = ' ..
                   tostring(item.close) .. ',\n		["combinable"] = ' ..
                   tostring(item.stack) .. ',\n		["description"] = ' ..
                   item.description .. '\n	},\n'
    end
    list = list .. '}'

    print('Finish migrate items from ox items.lua')
    local file, err = io.open("output/items.lua", 'w')
    if file then
        file:write(list)
        file:close()
    else
        print("error:", err)
    end
end, false)