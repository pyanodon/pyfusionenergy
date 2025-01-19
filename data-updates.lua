require "prototypes/updates/base-updates"
require "prototypes/updates/pycoalprocessing-updates"

ITEM("production-science-pack", "tool").icon = "__pyfusionenergygraphics__/graphics/icons/production-science-pack.png"
ITEM("production-science-pack", "tool"):set("icon_size", 64)

local recipes_list =
{
    "acetylene",
    "b2o3-milling",
    "bacteria-1",
    "blanket-chassi",
    "blanket",
    "boron-carbide",
    "boron-mixture",
    "boron",
    "calcinate-separation",
    "calcium-carbide",
    "coated-container",
    "cobalt-solvent",
    "coil-core",
    "control-unit",
    "crush-regolite",
    "crushing-molybdenite",
    "d2o-distilation",
    "divertor",
    "ethanolamine",
    "ferrite",
    "gasoline",
    "grease",
    "helium",
    "high-purified-gas",
    "industrial-solvent",
    "kmauts-ration",
    "lead-container",
    "liquid-petgas-separation",
    "liquid-petgas",
    "liquid-rich-gas-distilation",
    "liquid-rich-gas",
    "log7",
    "log8",
    "magnetic-core",
    "methyl-acrylate",
    "milling-molybdenite",
    "milling-regolite",
    "mining-molybdenum",
    "molybdenite-pulp",
    "molybdenum-concentrate",
    "molybdenum-oxide",
    "molybdenum-plate",
    "molybdenum-pulp",
    "nenbit-matrix",
    "nexelit-matrix",
    "nuclear-sample",
    "pressured-water",
    "purier-helium",
    "regolite-calcination",
    "regolite-recrush",
    "reinforced-wall-shield",
    "rich-gas",
    "sc-coil",
    "sc-unit",
    "sc-wire",
    "science-coating",
    "silver-foam",
    "soda-ash",
    "sodium-chlorate",
    "steam-heating",
    "vacuum",
    "wall-shield",
    "arthropod-blood",
    "xyhiphoe-hydrocyclone",
}

--adding to module limitation list
py.allow_productivity(recipes_list)

if register_cache_file ~= nil then
    register_cache_file({"pycoalprocessing", "pyfusionenergy"}, "__pyfusionenergy__/cached-configs/pycoalprocessing+pyfusionenergy.lua")
end
