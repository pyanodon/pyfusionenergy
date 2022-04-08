require("__stdlib__/stdlib/data/data").Util.create_data_globals()
local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

require("prototypes/updates/base-updates")
require("prototypes/updates/pycoalprocessing-updates")

ITEM("production-science-pack", "tool").icon = "__pyfusionenergygraphics__/graphics/icons/production-science-pack.png"
ITEM("production-science-pack", "tool"):set("icon_size", 64)
ITEM("production-science-pack", "tool"):set("icon_mipmaps", nil)

RECIPE('rocket-silo'):replace_ingredient("steel-plate", "super-alloy")
TECHNOLOGY("production-science-pack"):remove_prereq("uranium-processing"):remove_prereq("speed-module-2"):remove_prereq("effectivity-module-2"):remove_prereq("robotics"):remove_prereq("filtration-mk02"):remove_prereq("energy-3"):add_prereq("nuclear-fuel-reprocessing"):add_prereq("diamond-mining")

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
