-------------------------------------------------------------------------------
--MOLYBDENUM ORE
local molybdenum_ore ={
    type = "item",
    name = "molybdenum",
    icon = "__pyfusionenergy__/graphics/icons/ores/molybdenum.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "py-items",
    order = "a",
    stack_size = 200
}

 -------------------------------------------------------------------------------
data:extend(
    {
		molybdenum_ore
    }
)
