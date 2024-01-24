local input = load(LoadResourceFile(GetCurrentResourceName(), 'input/items.lua'))
if type(input) == 'function' then
    input = input()
elseif type(input) ~= 'table' then
    print("The file provided isn't the good items.lua from ox_inventory.")
    return
end

RegisterCommand("items", function(source, args, rawCommand)
    local list = 'ItemList = {\n'

    for i, item in pairs(input) do
        if item.description == nil then item.description = '' end
        if item.label == nil then item.label = i end
        if item.weight == nil then item.weight = 1 end
        if item.weight < 0.1 then item.weight = 0.1 end
        if item.stack == nil then item.stack = nil end
        if item.close == nil then item.close = false end

        list = list .. string.format('	["%s"] = {\n		["name"] = "%s",\n		["label"] = "%s",\n		["weight"] = %s,\n		["type"] = "item",\n		["image"] = "%s.png",\n		["unique"] = false,\n		["useable"] = true,\n		["shouldClose"] = %s,\n		["combinable"] = %s,\n		["description"] = "%s",\n	},\n',
                i, i, item.label, item.weight, i, tostring(item.close), tostring(item.stack), item.description)
    end
    list = list .. '}'

    print('Finish migrate items from ox items.lua')
    local file, err = io.open(GetResourcePath(GetCurrentResourceName()).."/output/items.lua", 'w')
    if file then
        file:write(list)
        file:close()
    else
        print("error:", err)
    end
end, false)