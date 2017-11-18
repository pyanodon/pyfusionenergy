-------------------------------------------------------------------------------
--[[bob-updates.lua]]-- luacheck: globals bobmods
-------------------------------------------------------------------------------
local replace_ing = bobmods.lib.recipe.replace_ingredient
local remove_ing = bobmods.lib.recipe.remove_ingredient
local add_ing = bobmods.lib.recipe.add_ingredient
local add_result = bobmods.lib.recipe.add_result
local remove_result = bobmods.lib.recipe.remove_result
--local add_prerequisite = bobmods.lib.tech.add_prerequisite

local change_value = function(recipe_str, field, val)
    local recipe = data.raw.recipe[recipe_str]
    if recipe then
        recipe[field] = val
    end
end

-------------------------------------------------------------------------------
--[[Entities]]--
-------------------------------------------------------------------------------
replace_ing("agitator", "iron-plate", "glass")
replace_ing("agitator", "electronic-circuit", "basic-electronic-circuit-board")

replace_ing("thickener", "electronic-circuit", "basic-electronic-circuit-board")
replace_ing("thickener", "pipe", "brass-alloy")

replace_ing("hydrocyclone", "iron-gear-wheel", "titanium-bearing")

replace_ing("mixer", "iron-gear-wheel", "titanium-bearing")
replace_ing("mixer", "iron-plate", "titanium-plate")

replace_ing("diamond-mine", "advanced-circuit", "electronic-logic-board")
replace_ing("diamond-mine", "iron-plate", "titanium-plate")

replace_ing("regolite-mine", "advanced-circuit", "electronic-logic-board")
replace_ing("regolite-mine", "iron-plate", "tungsten-plate")

replace_ing("secondary-crusher", "electronic-circuit", "electronic-logic-board")

replace_ing("jig", "advanced-circuit", "electronic-logic-board")
replace_ing("jig", "pipe", "titanium-pipe")

replace_ing("centrifugal-pan", "pipe", "titanium-pipe")
add_ing("centrifugal-pan", {type="item", name="tungsten-plate", amount=20})

replace_ing("compressor", "iron-gear-wheel", "titanium-bearing")

replace_ing("genlab", "iron-gear-wheel", "nitinol-bearing")
add_ing("genlab", {type="item", name="glass", amount=50})

add_ing("bio-reactor", {type="item", name="glass", amount=50})

add_ing("nmf", {type="item", name="glass", amount=50})

replace_ing("gas-separator", "pipe", "stone-pipe")

add_ing("fusion-reactor-mk01", {type="item", name="glass", amount=200})
-------------------------------------------------------------------------------
--[[Recipes]]--
-------------------------------------------------------------------------------
replace_ing("molybdenum-concentrate", "water", "nitrogen-dioxide")
replace_ing("phytoplankton", "crushed-iron", "crushed-tin")
add_ing("molybdenum-oxide", {type="fluid", name="oxygen", amount=100})
remove_result("molybdenum-oxide", "sulfur")
add_result("molybdenum-oxide", {type="fluid", name="sulfur-dioxide", amount=50})
add_ing("molybdenum-plate", {type="fluid", name="hydrogen", amount=100})
remove_result("cobalt-solvent", "ash")
add_result("cobalt-solvent", {type="item", name="cobalt-ore", amount=5})
replace_ing("soda-ash", "ppd", "sodium-hydroxide")
replace_ing("vpulp3", "petroleum-gas", "nitrogen-dioxide")
remove_ing("sodium-chlorate", "water-saline")
add_ing("sodium-chlorate", {type="item", name="salt", amount=20})
add_result("sodium-chlorate", {type="fluid", name="hydrogen", amount=150})
replace_ing("vpulp-precip", "water", "nitrogen-dioxide")
replace_ing("super-alloy", "steel-plate", "nickel-plate")
add_ing("grease", {type="item", name="lithium-plate", amount=15})
replace_ing("cool-air", "pressured-air", "liquid-nitrogen")
add_result("cool-air", {type="fluid", name="nitrogen", amount=200})
add_result("liquid-air-distilation", {type="fluid", name="nitrogen", amount=2})
add_result("liquid-air-distilation", {type="fluid", name="oxygen", amount=2})
remove_result("calcinate-separation", "iron-ore")
remove_result("calcinate-separation", "copper-ore")
add_result("calcinate-separation", {type="item", name="quartz", amount=1, probability=0.6})
add_result("calcinate-separation", {type="item", name="lead-ore", amount=1, probability=0.3})
add_result("calcinate-separation", {type="item", name="zinc-ore", amount=1, probability=0.3})
add_result("calcinate-separation", {type="item", name="silver-ore", amount=1, probability=0.3})
replace_ing("kmauts-ration", "iron-plate", "tin-plate")
remove_result("liquid-rich-gas-distilation", "water")
add_result("liquid-rich-gas-distilation", {type="fluid", name="liquid-nitrogen", amount=10})
add_result("purier-helium", {type="fluid", name="liquid-nitrogen", amount=1})
add_ing("helium", {type="fluid", name="hydrogen", amount=10})
replace_ing("nexelit-matrix", "wood", "resin")
replace_ing("nbti-alloy", "steel-plate", "titanium-plate")
add_ing("nbti-alloy", {type="fluid", name="nitrogen", amount=150})
replace_ing("sc-wire", "iron-plate", "tin-plate")
add_ing("ferrite", {type="item", name="zinc-plate", amount=10})
replace_ing("coil-core", "copper-cable", "gilded-copper-cable")
add_ing("sc-unit", {type="fluid", name="liquid-nitrogen", amount=100})
add_ing("sc-wire", {type="item", name="glass", amount=12})
add_result("d2o-distilation", {type="fluid", name="oxygen", amount=5})
add_ing("boron-mixture", {type="item", name="aluminium-plate", amount=5})
replace_ing("boron-carbide", "coke", "carbon")
add_ing("blanket", {type="item", name="lithium-plate", amount=10})
add_ing("blanket", {type="item", name="lead-plate", amount=40})
add_ing("blanket", {type="item", name="tungsten-plate", amount=40})
replace_ing("lead-container", "iron-plate", "lead-plate")
replace_ing("science-coating", "steel-plate", "titanium-plate")
replace_ing("agzn-alloy", "iron-plate", "silver-plate")
replace_ing("agzn-alloy", "stone", "zinc-plate")
replace_ing("silver-foam", "water", "hydrogen-chloride")

-------------------------------------------------------------------------------
--[[Tech]]--
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
--[[Categories]]--
-------------------------------------------------------------------------------
change_value("molybdenum-plate", "category", "electrolysis")
change_value("sodium-chlorate", "category", "electrolysis")
