local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

--((TECHNOLOGY))--
TECHNOLOGY('nuclear-fuel-reprocessing'):remove_prereq('production-science-pack'):remove_pack('production-science-pack')

TECHNOLOGY('speed-module-3'):add_prereq('speed-module-2')

TECHNOLOGY('effectivity-module-3'):add_prereq('effectivity-module-2')

TECHNOLOGY('kovarex-enrichment-process'):remove_prereq('production-science-pack'):remove_pack('production-science-pack')

--((RECIPES))--

FUN.add_result("nuclear-fuel-reprocessing", {type = "item", name = "plutonium", amount = 2})
RECIPE("nuclear-fuel-reprocessing"):set_fields{energy_required = 30}
RECIPE('guar-gum-plantation-mk04'):add_ingredient({type = "item", name = "super-alloy", amount = 20})
RECIPE('compressor-mk01'):add_unlock('advanced-oil-processing')
RECIPE('rocket-silo'):replace_ingredient("steel-plate", "super-alloy")
