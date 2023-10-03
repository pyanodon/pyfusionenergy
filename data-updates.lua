require("__stdlib__/stdlib/data/data").Util.create_data_globals()
local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

require("prototypes/updates/base-updates")
require("prototypes/updates/pycoalprocessing-updates")

ITEM("production-science-pack", "tool").icon = "__pyfusionenergygraphics__/graphics/icons/production-science-pack.png"
ITEM("production-science-pack", "tool"):set("icon_size", 64)
ITEM("production-science-pack", "tool"):set("icon_mipmaps", nil)

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
  "xyhiphoe-blood",
  "xyhiphoe-hydrocyclone",
  "cobalt-solvent",
  "sodium-chlorate",
  "wastewater-recovery",
  "calcinate-separation",
  "bacteria-1",
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
  "nenbit-matrix",
  "ferrite",
  "coil-core",
  "sc-wire",
  "sc-coil",
  "magnetic-core",
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
  "ethanolamine",
  "high-purified-gas",
  "rich-gas",
  "liquid-rich-gas",
  "purier-helium",
}

--adding to module limitation list
FUN.productivity(recipes_list)

if register_cache_file ~= nil then
    register_cache_file({"pycoalprocessing", "pyfusionenergy"}, "__pyfusionenergy__/cached-configs/pycoalprocessing+pyfusionenergy.lua")
end