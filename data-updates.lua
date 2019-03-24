require("__stdlib__/stdlib/data/data").Util.create_data_globals()
local FUN = require("__pycoalprocessing__/functions/functions")


ITEM("production-science-pack", "tool").icon = "__pyfusionenergy__/graphics/icons/production-science-pack.png"

RECIPE("production-science-pack"):remove_unlock('production-science-pack')
TECHNOLOGY('production-science-pack'):remove_prereq('advanced-material-processing-2'):remove_prereq('productivity-module'):remove_prereq('railway')
TECHNOLOGY('automation-3'):remove_prereq('production-science-pack'):add_prereq('diamond-mining')
TECHNOLOGY('logistics-3'):remove_prereq('production-science-pack'):add_prereq('diamond-mining')
TECHNOLOGY('coal-liquefaction'):remove_prereq('production-science-pack'):add_prereq('diamond-mining')
TECHNOLOGY('kovarex-enrichment-process'):remove_prereq('production-science-pack'):add_prereq('diamond-mining')
TECHNOLOGY('nuclear-fuel-reprocessing'):remove_prereq('production-science-pack'):add_prereq('diamond-mining')
TECHNOLOGY('speed-module-3'):remove_prereq('production-science-pack'):add_prereq('diamond-mining')
TECHNOLOGY('productivity-module-3'):remove_prereq('production-science-pack'):add_prereq('diamond-mining')
TECHNOLOGY('effectivity-module-3'):remove_prereq('production-science-pack'):add_prereq('diamond-mining')
TECHNOLOGY('effect-transmission'):remove_prereq('production-science-pack'):add_prereq('diamond-mining')

local recipes_list =
	{
	"molybdenum-plate",
	"sodium-chlorate",
	"kmauts-ration",
	"control-unit",
	"divertor",
	"lead-container",
	"sc-coil",
	"sc-wire"
	}
local Cat_list =
	{
	"agitator",
	"thickener",
	"vacuum",
	"plankton",
	"xyhiphoe",
	"hydrocyclone",
	"mixer",
	"screener",
	"secondary-crusher",
	"pan",
	"jig",
	"grease",
	"compressor",
	"genlab",
	"kmauts",
	"bio-reactor",
	"gas-separator",
	"nmf",
	"fusion-01",
	"fusion-02",
	"heat-exchanger"
	}

--adding to module limitation list
FUN.recipe_add_prod(recipes_list,Cat_list)
FUN.add_buildings(recipes_list)
FUN.productivity(recipes_list)
