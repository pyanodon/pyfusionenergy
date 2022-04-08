local fun = require("__pycoalprocessing__/prototypes/functions/functions")


--((TECHNOLOGY))--
TECHNOLOGY('nuclear-fuel-reprocessing'):remove_prereq('production-science-pack'):remove_pack('production-science-pack')

TECHNOLOGY('production-science-pack'):remove_prereq('electric-engine'):add_prereq('advanced-material-processing-2'):add_prereq('nenbit-matrix')

TECHNOLOGY('logistics-3'):remove_prereq('logistics-2')

TECHNOLOGY('destroyer'):add_prereq('speed-module')

TECHNOLOGY('speed-module-3'):add_prereq('speed-module-2')

TECHNOLOGY('effectivity-module-3'):add_prereq('effectivity-module-2')

TECHNOLOGY('power-armor-mk2'):add_prereq('speed-module-2'):add_prereq('effectivity-module-2')

TECHNOLOGY('advanced-oil-processing'):add_prereq('fuel-production')

TECHNOLOGY('rocket-silo'):add_prereq('super-alloy')

TECHNOLOGY('space-science-pack'):add_prereq('fusion-mk02')

TECHNOLOGY("production-science-pack"):remove_prereq("uranium-processing"):remove_prereq("speed-module-2"):remove_prereq("effectivity-module-2"):remove_prereq("robotics"):remove_prereq("filtration-mk02"):remove_prereq("energy-3"):add_prereq("nuclear-fuel-reprocessing"):add_prereq("diamond-mining")

data.raw.technology["kovarex-enrichment-process"].unit =
{
  ingredients =
  {
    {"automation-science-pack", 6},
    {"logistic-science-pack", 4},
    {"chemical-science-pack", 2},
    {'military-science-pack', 2},
    {"production-science-pack", 1}
  },
  time = 30,
  count = 150
}

--((RECIPES))--

fun.add_result("nuclear-fuel-reprocessing", {type = "item", name = "plutonium", amount = 2})
RECIPE("nuclear-fuel-reprocessing"):set_fields{energy_required = 30}
RECIPE('guar-gum-plantation-mk04'):add_ingredient({type = "item", name = "super-alloy", amount = 20})
RECIPE('compressor-mk01'):add_unlock('advanced-oil-processing')
RECIPE('rocket-silo'):replace_ingredient("steel-plate", "super-alloy")
