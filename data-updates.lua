require("__stdlib__/stdlib/data/data").Util.create_data_globals()
local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

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
if not mods['pypetroleumhandling'] then
--TECHNOLOGY('electric-engine'):remove_pack('chemical-science-pack')
TECHNOLOGY('advanced-oil-processing'):remove_pack('chemical-science-pack')
end

local recipes_list =
	{
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
  --"vanadium-oxide",
  "wastewater-recovery",
  "super-alloy",
  --"crushed-kimberlite",
  --"screening-kimberlite",
  --"kimberlite-recrushing",
  --"kimberlite-washing",
  --"pure-kimberlite-recrushing",
  --"screening-kimberlite-residue",
  --"diamond-rejects-recrushing",
  --"diamond-rejects-screening",
  --"rejects-separation",
  --"jig-separation",
  --"greasing-1",
  --"greasing-2",
  --"greasing-3",
  --"washing-crude",
  --"class-diamond",
  --"cool-air",
  --"liquid-air-distilation",
  --"cool-air-1",
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
  --"deuterium-fusion",
  --"dt-he3",
  --"dt-fusion",
  --"b-h",
  --"steam-exchange1",
  --"steam-exchange2",
  --"steam-exchange3",
  --"steam-exchange4",
  "lead-container",
  "science-coating",
  "coated-container",
  "nuclear-sample",
  "control-unit",
  "agzn-alloy",
  "silver-foam",
  --"he3-separation",
  "mining-molybdenum",
  "steam-heating",
  "log7",
  "log8",
  "molybdenite-pulp",
  "molybdenum-pulp",
  "vacuum",
  "pressured-water",
  --"vanabins",
  --"vanadates",
  --"blue-liquor",
  --"vpulp1",
  --"vpulp2",
  --"vpulp3",
  --"vpulp4",
  --"vpulp5",
  --"pressured-vpulp",
  --"vanadium-solution",
  --"vanadium-concentrate",
  --"organic-vanadate",
  "industrial-solvent",
  "soda-ash",
  --"acid-strip-solution",
  --"pregnant-solution",
  --"vpulp-precip",
  --"kimberlite-pulp",
  --"diamond-tailings",
  --"diamond-concentrate",
  --"jig-diamond-concentrate",
  --"jig-diamond-tailings",
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
  --"liquid-helium",
  --"evaporate-helium",
  "heavy-water",
  --"agitator",
  --"thickener",
  --"vacuum-pump",
  --"plankton-farm",
  --"xyhiphoe-pool",
  --"hydrocyclone",
  --"mixer",
  --"diamond-mine",
  --"automated-screener",
  --"secondary-crusher",
  --"centrifugal-pan",
  --"jig",
  --"grease-table",
  --"regolite-mine",
  --"compressor",
  --"genlab",
  --"kmauts-enclosure",
  --"bio-reactor",
  --"gas-separator",
  --"nmf",
  --"fusion-reactor-mk01",
  --"fusion-reactor-mk02",
  --"py-heat-exchanger",
  --"py-turbine",
  --"mo-mine"
}

--adding to module limitation list
FUN.productivity(recipes_list)
