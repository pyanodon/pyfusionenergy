local add_result = bobmods.lib.recipe.add_result
local remove_result = bobmods.lib.recipe.remove_result


RECIPE("molybdenum-oxide"):add_ingredient({type = "fluid", name = "oxygen", amount = 100})
remove_result("molybdenum-oxide", "sulfur")
add_result("molybdenum-oxide", {type = "fluid", name = "sulfur-dioxide", amount = 50})

remove_result("cobalt-solvent", "ash")
add_result("cobalt-solvent", {type = "item", name = "cobalt-ore", amount = 5})

RECIPE("soda-ash"):replace_ingredient("ppd", "sodium-hydroxide")
RECIPE("vpulp3"):replace_ingredient("petroleum-gas", "nitrogen-dioxide")

add_result("sodium-chlorate", {type = "fluid", name = "hydrogen", amount = 150})

add_result("cool-air", {type = "fluid", name = "nitrogen", amount = 200})

add_result("liquid-air-distilation", {type = "fluid", name = "nitrogen", amount = 2})
add_result("liquid-air-distilation", {type = "fluid", name = "oxygen", amount = 2})

remove_result("calcinate-separation", "iron-ore")
remove_result("calcinate-separation", "copper-ore")
add_result("calcinate-separation", {type = "item", name = "quartz", amount = 1, probability = 0.6})
add_result("calcinate-separation", {type = "item", name = "lead-ore", amount = 1, probability = 0.3})
add_result("calcinate-separation", {type = "item", name = "zinc-ore", amount = 1, probability = 0.3})
add_result("calcinate-separation", {type = "item", name = "silver-ore", amount = 1, probability = 0.3})
add_result("d2o-distilation", {type = "fluid", name = "oxygen", amount = 5})


remove_result("liquid-rich-gas-distilation", "water")
add_result("liquid-rich-gas-distilation", {type = "fluid", name = "liquid-nitrogen", amount = 10})

add_result("purier-helium", {type = "fluid", name = "liquid-nitrogen", amount = 1})

