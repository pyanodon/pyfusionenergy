-------------------------------------------------------------------------------
--[[bob-updates.lua]]-- luacheck: globals bobmods
-------------------------------------------------------------------------------
local replace_ing = bobmods.lib.recipe.replace_ingredient
local remove_ing = bobmods.lib.recipe.remove_ingredient
local add_ing = bobmods.lib.recipe.add_ingredient
local add_result = bobmods.lib.recipe.add_result
local remove_result = bobmods.lib.recipe.remove_result
local add_prerequisite = bobmods.lib.tech.add_prerequisite

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


-------------------------------------------------------------------------------
--[[Tech]]--
-------------------------------------------------------------------------------
bobmods.lib.tech.add_recipe_unlock("crusher", "crushing-molybdenite")
bobmods.lib.tech.add_recipe_unlock("crusher", "milling-molybdenite")


-------------------------------------------------------------------------------
--[[Categories]]--
-------------------------------------------------------------------------------
change_value("molybdenum-plate", "category", "electrolysis")
change_value("sodium-chlorate", "category", "electrolysis")