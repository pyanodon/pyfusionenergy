require("__stdlib__/stdlib/data/data").Util.create_data_globals()
local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

require("prototypes/updates/base-updates")
require("prototypes/updates/pycoalprocessing-updates")

ITEM("production-science-pack", "tool").icon = "__pyfusionenergygraphics__/graphics/icons/production-science-pack.png"
ITEM("production-science-pack", "tool"):set("icon_size", 32)

--RECIPE("production-science-pack"):remove_unlock('production-science-pack')

RECIPE('rocket-silo'):replace_ingredient("steel-plate", "super-alloy")
TECHNOLOGY("production-science-pack"):remove_prereq("uranium-processing"):remove_prereq("speed-module-2"):remove_prereq("effectivity-module-2"):remove_prereq("robotics"):remove_prereq("filtration-2"):remove_prereq("energy-3"):add_prereq("advanced-mining-facilities"):add_prereq("diamond-mining")

--TECHNOLOGY('automation-3'):remove_prereq('production-science-pack'):add_prereq('diamond-mining')

--TECHNOLOGY('logistics-3'):remove_prereq('production-science-pack'):add_prereq('diamond-mining')

--TECHNOLOGY('coal-liquefaction'):remove_prereq('production-science-pack'):add_prereq('diamond-mining')

--TECHNOLOGY('kovarex-enrichment-process'):remove_prereq('production-science-pack'):add_prereq('diamond-mining')

--TECHNOLOGY('nuclear-fuel-reprocessing'):remove_prereq('production-science-pack'):add_prereq('diamond-mining')

--TECHNOLOGY('speed-module-3'):remove_prereq('production-science-pack'):add_prereq('diamond-mining')

--TECHNOLOGY('productivity-module-3'):remove_prereq('production-science-pack'):add_prereq('diamond-mining')

--TECHNOLOGY('effectivity-module-3'):remove_prereq('production-science-pack'):add_prereq('diamond-mining')

--TECHNOLOGY('effect-transmission'):remove_prereq('production-science-pack'):add_prereq('diamond-mining')

--TECHNOLOGY('laser-turrets'):remove_pack('chemical-science-pack')
--TECHNOLOGY('laser'):remove_pack('chemical-science-pack')

local recipes_list =
	{
  "calcium-carbide",
  "acetylene",
  "gasoline",
  "crushing-molybdenite",
  "milling-molybdenite",
  "molybdenum-concentrate",
  "molybdenum-oxide",
  "molybdenum-plate",
  "phytoplankton",
  "xyhiphoe-blood",
  "xyhiphoe-hydrocyclone",
  "cobalt-solvent",
  "solvent-separation",
  "sodium-chlorate",
  "wastewater-recovery",
  "super-alloy",
  "stone-calcination",
  "gravel-calcination",
  "calcinate-separation",
  "bacteria-1",
  "serine",
  "methyl-acrylate",
  "kmauts-ration",
  "crush-regolite",
  "regolite-recrush",
  "milling-regolite",
  "regolite-calcination",
  "liquid-petgas",
  "liquid-petgas-separation",
  "liquid-rich-gas-distilation",
  "helium",
  "nexelit-matrix",
  "nbti-alloy",
  "nenbit-matrix",
  "ferrite",
  "coil-core",
  "sc-wire",
  "sc-coil",
  "magnetic-core",
  "deposited-core",
  "sc-unit",
  "d2o-distilation",
  "b2o3-milling",
  "boron-mixture",
  "boron",
  "boron-carbide",
  "blanket-chassi",
  "blanket",
  "divertor",
  "wall-shield",
  "reinforced-wall-shield",
  "lead-container",
  "science-coating",
  "coated-container",
  "nuclear-sample",
  "control-unit",
  "agzn-alloy",
  "silver-foam",
  "mining-molybdenum",
  "steam-heating",
  "log7",
  "log8",
  "molybdenite-pulp",
  "molybdenum-pulp",
  "vacuum",
  "pressured-water",
  "industrial-solvent",
  "soda-ash",
  "grease",
  "purified-air",
  "pressured-air",
  "cold-clean-air",
  "liquid-pure-air",
  "ethanolamine",
  "high-purified-gas",
  "rich-gas",
  "liquid-rich-gas",
  "purier-helium",
  "heavy-water",
}

--adding to module limitation list
FUN.productivity(recipes_list)
