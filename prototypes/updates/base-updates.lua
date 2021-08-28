local fun = require("__pycoalprocessing__/prototypes/functions/functions")


--((TECHNOLOGY))--
TECHNOLOGY('nuclear-fuel-reprocessing'):remove_prereq('production-science-pack'):remove_pack('production-science-pack')

--((RECIPES))--

fun.add_result("nuclear-fuel-reprocessing", {type = "item", name = "plutonium", amount = 2})
RECIPE("nuclear-fuel-reprocessing"):set_fields{energy_required = 30}

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
      {"fusion-reactor-mk01", 5},
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
      {"super-alloy", 5},
      {"rocket-fuel", 10}
    },
    result= "rocket-part"
  }
