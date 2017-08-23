-------------------------------------------------------------------------------
--MOLYBDENUM ORE
local molybdenum_ore ={
    type = "item",
    name = "molybdenum-ore",
    icon = "__pyfusionenergy__/graphics/icons/ores/molybdenum.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "py-fusion-items",
    order = "a",
    stack_size = 200
}
-------------------------------------------------------------------------------
--KIMBERLITE ROCK
local kimberlite_rock ={
    type = "item",
    name = "kimberlite-rock",
    icon = "__pyfusionenergy__/graphics/icons/ores/kimberlite-rock.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "py-fusion-items",
    order = "a",
    stack_size = 500
}
--CRUSHED MOLYBDENITE
local crushed_molybdenite ={
    type = "item",
    name = "crushed-molybdenite",
    icon = "__pyfusionenergy__/graphics/icons/crushed-molybdenite.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "py-fusion-items",
    order = "b",
    stack_size = 300
}
--MOLYBDENITE DUST
local molybdenite_dust ={
    type = "item",
    name = "molybdenite-dust",
    icon = "__pyfusionenergy__/graphics/icons/molybdenite-dust.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "py-fusion-items",
    order = "c",
    stack_size = 500
}
--MOLYBDENUM CONCENTRATE
local molybdenum_concentrate ={
    type = "item",
    name = "molybdenum-concentrate",
    icon = "__pyfusionenergy__/graphics/icons/molybdenum-concentrate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "py-fusion-items",
    order = "d",
    stack_size = 500
}
--MOLYBDENUM SULFIDE
local molybdenum_sulfide ={
    type = "item",
    name = "molybdenum-sulfide",
    icon = "__pyfusionenergy__/graphics/icons/molybdenum-sulfide.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "py-fusion-items",
    order = "e",
    stack_size = 100
}
--MOLYBDENUM OXIDE
local molybdenum_oxide ={
    type = "item",
    name = "molybdenum-oxide",
    icon = "__pyfusionenergy__/graphics/icons/molybdenum-oxide.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "py-fusion-items",
    order = "f",
    stack_size = 100
}
--MOLYBDENUM PLATE
local molybdenum_plate ={
    type = "item",
    name = "molybdenum-plate",
    icon = "__pyfusionenergy__/graphics/icons/molybdenum-plate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "py-fusion-items",
    order = "g",
    stack_size = 150
}
--SODIUM CHLORATE
local sodium_chlorate ={
    type = "item",
    name = "sodium-chlorate",
    icon = "__pyfusionenergy__/graphics/icons/sodium-chlorate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "py-fusion-items",
    order = "h",
    stack_size = 200
}
--VANADIUM OXIDE
local vanadium_oxide ={
    type = "item",
    name = "vanadium-oxide",
    icon = "__pyfusionenergy__/graphics/icons/vanadium-oxide.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "py-fusion-items",
    order = "i",
    stack_size = 200
}
 -------------------------------------------------------------------------------
data:extend(
    {
		molybdenum_ore,
		crushed_molybdenite,
		molybdenite_dust,
		molybdenum_concentrate,
		molybdenum_sulfide,
		molybdenum_oxide,
		molybdenum_plate,
		sodium_chlorate,
		vanadium_oxide,
		kimberlite_rock
    }
)
