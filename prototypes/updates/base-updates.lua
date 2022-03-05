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

--space science
  RECIPE{
    type = "recipe",
    name = "satellite",
    energy_required = 5,
    enabled = false,
    category = "advanced-crafting",
    ingredients =
    {
      {"low-density-structure", 100},
      {"fusion-reactor-mk01", 1},
      {"processing-unit", 100},
      {type = "fluid", name = "deuterium", amount = 200},
      {type = "fluid", name = "helium3", amount = 100},
      {type = "item", name = "blanket", amount = 1},
      {type = "item", name = "divertor", amount = 3},
      {type = "item", name = "reinforced-wall-shield", amount = 3},
      {type = "item", name = "sc-unit", amount = 4},
    },
    result= "satellite",
    requester_paste_multiplier = 1
  }

  RECIPE{
    type = "recipe",
    name = "rocket-part",
    energy_required = 3,
    enabled = false,
    hidden = true,
    category = "rocket-building",
    ingredients =
    {
      {"rocket-control-unit", 10},
      {"low-density-structure", 5},
      {"super-alloy", 8},
      {"rocket-fuel", 10}
    },
    result= "rocket-part"
  }
