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


-------------------------------------------------------------------------------
--[[Recipes]]--
-------------------------------------------------------------------------------
replace_ing("molybdenum-concentrate", "water", "nitrogen-dioxide")
add_ing("molybdenum-oxide", {type="fluid", name="oxygen", amount=100})
remove_result("molybdenum-oxide", "sulfur")
add_result("molybdenum-oxide", {type="fluid", name="sulfur-dioxide", amount=50})
add_ing("molybdenum-plate", {type="fluid", name="hydrogen", amount=100})


-------------------------------------------------------------------------------
--[[Tech]]--
-------------------------------------------------------------------------------
bobmods.lib.tech.add_recipe_unlock("crusher", "crushing-molybdenite")
bobmods.lib.tech.add_recipe_unlock("crusher", "milling-molybdenite")


-------------------------------------------------------------------------------
--[[Categories]]--
-------------------------------------------------------------------------------
change_value("molybdenum-plate", "category", "electrolysis")