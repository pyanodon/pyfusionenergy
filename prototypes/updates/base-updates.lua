--((TECHNOLOGY))--
TECHNOLOGY("nuclear-fuel-reprocessing"):remove_prereq("production-science-pack"):remove_pack("production-science-pack")

TECHNOLOGY("kovarex-enrichment-process"):remove_prereq("production-science-pack"):remove_pack("production-science-pack")

--((RECIPES))--

RECIPE("nuclear-fuel-reprocessing"):add_result({ type = "item", name = "plutonium", amount = 2 })
RECIPE("nuclear-fuel-reprocessing"):set_fields({ energy_required = 30 })
RECIPE("guar-gum-plantation-mk04"):add_ingredient({ type = "item", name = "super-alloy", amount = 20 })
RECIPE("compressor-mk01"):add_unlock("advanced-oil-processing")
RECIPE("rocket-silo"):replace_ingredient("steel-plate", "super-alloy")
