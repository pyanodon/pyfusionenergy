local add_result = bobmods.lib.recipe.add_result
local remove_result = bobmods.lib.recipe.remove_result

RECIPE("agitator"):replace_ingredient("iron-plate", "glass"):replace_ingredient("electronic-circuit", "basic-circuit-board")
RECIPE("thickener"):replace_ingredient("electronic-circuit", "basic-circuit-board"):replace_ingredient("pipe", "brass-alloy")
RECIPE("hydrocyclone"):replace_ingredient("iron-gear-wheel", "titanium-bearing")
RECIPE("mixer"):replace_ingredient("iron-gear-wheel", "titanium-bearing"):replace_ingredient("iron-plate", "titanium-plate")
RECIPE("diamond-mine"):replace_ingredient("advanced-circuit", "electronic-logic-board"):replace_ingredient("iron-plate", "titanium-plate")
RECIPE("regolite-mine"):replace_ingredient("advanced-circuit", "electronic-logic-board"):replace_ingredient("iron-plate", "tungsten-plate")
RECIPE("secondary-crusher"):replace_ingredient("electronic-circuit", "electronic-logic-board")
RECIPE("jig"):replace_ingredient("advanced-circuit", "electronic-logic-board"):replace_ingredient("pipe", "titanium-pipe")
RECIPE("centrifugal-pan"):replace_ingredient("pipe", "titanium-pipe"):add_ingredient({type = "item", name = "tungsten-plate", amount = 20})
RECIPE("compressor"):replace_ingredient("iron-gear-wheel", "titanium-bearing"):add_ingredient({type = "item", name = "tungsten-plate", amount = 20})
RECIPE("genlab"):replace_ingredient("iron-gear-wheel", "nitinol-bearing"):add_ingredient({type = "item", name = "glass", amount = 50})
RECIPE("bio-reactor"):add_ingredient({type = "item", name = "glass", amount = 50})
RECIPE("nmf"):add_ingredient({type = "item", name = "glass", amount = 50})
RECIPE("gas-separator"):replace_ingredient("pipe", "stone-pipe")
RECIPE("fusion-reactor-mk01"):add_ingredient({type = "item", name = "glass", amount = 200})
RECIPE("molybdenum-concentrate"):replace_ingredient("water", "nitrogen-dioxide")
RECIPE("phytoplankton"):replace_ingredient("crushed-iron", "crushed-tin")

RECIPE("molybdenum-oxide"):add_ingredient({type = "fluid", name = "oxygen", amount = 100})
remove_result("molybdenum-oxide", "sulfur")
add_result("molybdenum-oxide", {type = "fluid", name = "sulfur-dioxide", amount = 50})

RECIPE("molybdenum-plate"):add_ingredient({type = "fluid", name = "hydrogen", amount = 100}):set_category("electrolysis")

remove_result("cobalt-solvent", "ash")
add_result("cobalt-solvent", {type = "item", name = "cobalt-ore", amount = 5})

RECIPE("soda-ash"):replace_ingredient("ppd", "sodium-hydroxide")
RECIPE("vpulp3"):replace_ingredient("petroleum-gas", "nitrogen-dioxide")

RECIPE("sodium-chlorate"):remove_ingredient('sodium-chlorate', 'water-saline'):add_ingredient({type = "item", name = "salt", amount = 20}):set_category('electrolysis')
add_result("sodium-chlorate", {type = "fluid", name = "hydrogen", amount = 150})

RECIPE("vpulp-precip"):replace_ingredient("water", "nitrogen-dioxide")
RECIPE("super-alloy"):replace_ingredient("steel-plate", "nickel-plate")
RECIPE("grease"):add_ingredient({type = "item", name = "lithium-plate", amount = 15})

RECIPE("cool-air"):replace_ingredient("pressured-air", "liquid-nitrogen")
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

RECIPE("kmauts-ration"):replace_ingredient("iron-plate", "tin-plate")

remove_result("liquid-rich-gas-distilation", "water")
add_result("liquid-rich-gas-distilation", {type = "fluid", name = "liquid-nitrogen", amount = 10})

add_result("purier-helium", {type = "fluid", name = "liquid-nitrogen", amount = 1})
RECIPE("helium"):add_ingredient({type = "fluid", name = "hydrogen", amount = 10})

RECIPE("nexelit-matrix"):replace_ingredient("wood", "resin")
RECIPE("nbti-alloy"):replace_ingredient("steel-plate", "titanium-plate"):add_ingredient({type = "fluid", name = "nitrogen", amount = 150})
RECIPE("sc-wire"):replace_ingredient("iron-plate", "tin-plate")
RECIPE("ferrite"):add_ingredient({type = "item", name = "zinc-plate", amount = 10})
RECIPE("coil-core"):replace_ingredient("copper-cable", "gilded-copper-cable")
RECIPE("sc-unit"):add_ingredient({type = "fluid", name = "liquid-nitrogen", amount = 100})
RECIPE("sc-wire"):add_ingredient({type = "item", name = "glass", amount = 12})
RECIPE("boron-mixture"):add_ingredient({type = "item", name = "aluminium-plate", amount = 5})
RECIPE("boron"):add_ingredient({type = "fluid", name = "hydrogen-chloride", amount = 500})
RECIPE("boron-carbide"):replace_ingredient("coke", "carbon")
RECIPE("blanket"):add_ingredient({type = "item", name = "lithium-plate", amount = 10})
RECIPE("blanket"):add_ingredient({type = "item", name = "lead-plate", amount = 40})
RECIPE("blanket"):add_ingredient({type = "item", name = "tungsten-plate", amount = 40})
RECIPE("lead-container"):replace_ingredient("iron-plate", "lead-plate")
RECIPE("science-coating"):replace_ingredient("steel-plate", "titanium-plate")
RECIPE("agzn-alloy"):replace_ingredient("iron-plate", "silver-plate"):replace_ingredient("stone", "zinc-plate")
RECIPE("silver-foam"):replace_ingredient("water", "hydrogen-chloride")
