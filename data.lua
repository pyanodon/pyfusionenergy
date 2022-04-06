require("__stdlib__/stdlib/data/data").Util.create_data_globals()

require("prototypes/item-groups")

require("prototypes/recipe-categories")

require("prototypes/technologies/advanced-mining-facilities")
require("prototypes/technologies/sc-unit")
require("prototypes/technologies/fusion-1")
require("prototypes/technologies/fusion-2")
require("prototypes/technologies/fusion-3")
require("prototypes/technologies/fusion-4")
require("prototypes/technologies/diamond-mining")
require("prototypes/technologies/regolite-mining")
require("prototypes/technologies/molybdenum-processing")
require("prototypes/technologies/nenbit-matrix")
require("prototypes/technologies/vanadium-processing")
require("prototypes/technologies/helium-processing")
require("prototypes/technologies/helium-processing-2")
require("prototypes/technologies/super-alloy")
require("prototypes/technologies/kmauts")
require("prototypes/technologies/ethanolamine")
require("prototypes/technologies/liquid-petroleum-processing")
require("prototypes/technologies/xyhiphoe")
require("prototypes/technologies/wood-processing-3")
require("prototypes/technologies/boron")
require("prototypes/technologies/kovarex-enrichment-process-2")
require("prototypes/technologies/fluid-pressurization")
require("prototypes/technologies/coated-container")

require("prototypes/ore/molybdenum")
require("prototypes/ore/volcanic-pipe")
require("prototypes/ore/regolites")

require("prototypes/recipes/recipes")

require("prototypes/items/items")

require("prototypes/fluids/molybdenite-pulp")
require("prototypes/fluids/molybdenum-pulp")
require("prototypes/fluids/vacuum")
require("prototypes/fluids/phytoplankton")
require("prototypes/fluids/xyhiphoe-blood")
require("prototypes/fluids/pressured-water")
require("prototypes/fluids/waste-water")
require("prototypes/fluids/vanabins")
require("prototypes/fluids/vanadates")
require("prototypes/fluids/blue-liquor")
require("prototypes/fluids/vpulp1")
require("prototypes/fluids/vpulp2")
require("prototypes/fluids/vpulp3")
require("prototypes/fluids/vpulp4")
require("prototypes/fluids/vpulp5")
require("prototypes/fluids/pressured-vpulp")
require("prototypes/fluids/vanadium-solution")
require("prototypes/fluids/vanadium-concentrate")
require("prototypes/fluids/organic-vanadate")
require("prototypes/fluids/industrial-solvent")
require("prototypes/fluids/used-solvent")
require("prototypes/fluids/soda-ash")
require("prototypes/fluids/acid-strip-solution")
require("prototypes/fluids/pregnant-solution")
require("prototypes/fluids/vpulp-precip")
require("prototypes/fluids/kimberlite-pulp")
require("prototypes/fluids/diamond-tailings")
require("prototypes/fluids/diamond-concentrate")
require("prototypes/fluids/jig-concentrate")
require("prototypes/fluids/grease")
require("prototypes/fluids/jig-grade1")
require("prototypes/fluids/jig-grade2")
require("prototypes/fluids/jig-grade3")
require("prototypes/fluids/purified-air")
require("prototypes/fluids/pressured-air")
require("prototypes/fluids/cold-air")
require("prototypes/fluids/cold-clean-air")
require("prototypes/fluids/liquid-pure-air")
require("prototypes/fluids/helium-rich-gas")
require("prototypes/fluids/dry-gas-stream")
require("prototypes/fluids/gas-stream")
require("prototypes/fluids/bacteria-1")
require("prototypes/fluids/ethanolamine")
require("prototypes/fluids/high-purified-gas")
require("prototypes/fluids/liquid-petgas")
require("prototypes/fluids/rich-gas")
require("prototypes/fluids/liquid-rich-gas")
require("prototypes/fluids/purier-helium")
require("prototypes/fluids/helium")
require("prototypes/fluids/liquid-helium")
require("prototypes/fluids/heavy-water")
require("prototypes/fluids/deuterium")
require("prototypes/fluids/tritium")
require("prototypes/fluids/helium3")
require("prototypes/fluids/proton")
require("prototypes/fluids/pressured-steam")
require("prototypes/fluids/critical-steam")

--pull in unused gasoline from pycoal
require("__pycoalprocessing__/prototypes/fluids/gasoline")
require("__pycoalprocessing__/prototypes/fluids/acetylene")

require("__stdlib__/stdlib/core")

require("prototypes/buildings/agitator-mk01")
require("prototypes/buildings/thickener-mk01")
require("prototypes/buildings/vacuum-pump-mk01")
require("prototypes/buildings/plankton-farm")
require("prototypes/buildings/xyhiphoe-pool-mk01")
require("prototypes/buildings/hydrocyclone-mk01")
require("prototypes/buildings/mixer-mk01")
require("prototypes/buildings/diamond-mine")
require("prototypes/buildings/automated-screener-mk01")
require("prototypes/buildings/secondary-crusher-mk01")
require("prototypes/buildings/centrifugal-pan-mk01")
require("prototypes/buildings/jig-mk01")
require("prototypes/buildings/grease-table-mk01")
require("prototypes/buildings/regolite-mine")
require("prototypes/buildings/compressor-mk01")
require("prototypes/buildings/genlab-mk01")
require("prototypes/buildings/kmauts-enclosure-mk01")
require("prototypes/buildings/bioreactor")
require("prototypes/buildings/gas-separator-mk01")
require("prototypes/buildings/nmf-mk01")
require("prototypes/buildings/fusion-reactor-mk01")
require("prototypes/buildings/fusion-reactor-mk02")
require("prototypes/buildings/heat-exchanger")
-- require("prototypes/buildings/heat-exchanger-mk02")
-- require("prototypes/buildings/heat-exchanger-mk03")
-- require("prototypes/buildings/heat-exchanger-mk04")
require("prototypes/buildings/py-turbine")
require("prototypes/buildings/mo-mine")

if mods["pyrawores"] then

require("prototypes/buildings/agitator-mk02")
require("prototypes/buildings/agitator-mk03")
require("prototypes/buildings/agitator-mk04")

require("prototypes/buildings/thickener-mk02")
require("prototypes/buildings/thickener-mk03")
require("prototypes/buildings/thickener-mk04")

require("prototypes/buildings/vacuum-pump-mk02")
require("prototypes/buildings/vacuum-pump-mk03")
require("prototypes/buildings/vacuum-pump-mk04")

require("prototypes/buildings/plankton-farm-mk02")
require("prototypes/buildings/plankton-farm-mk03")
require("prototypes/buildings/plankton-farm-mk04")

require("prototypes/buildings/hydrocyclone-mk02")
require("prototypes/buildings/hydrocyclone-mk03")
require("prototypes/buildings/hydrocyclone-mk04")

require("prototypes/buildings/mixer-mk02")
require("prototypes/buildings/mixer-mk03")
require("prototypes/buildings/mixer-mk04")

require("prototypes/buildings/automated-screener-mk02")
require("prototypes/buildings/automated-screener-mk03")
require("prototypes/buildings/automated-screener-mk04")

require("prototypes/buildings/secondary-crusher-mk02")
require("prototypes/buildings/secondary-crusher-mk03")
require("prototypes/buildings/secondary-crusher-mk04")

require("prototypes/buildings/centrifugal-pan-mk02")
require("prototypes/buildings/centrifugal-pan-mk03")
require("prototypes/buildings/centrifugal-pan-mk04")

require("prototypes/buildings/jig-mk02")
require("prototypes/buildings/jig-mk03")
require("prototypes/buildings/jig-mk04")

require("prototypes/buildings/grease-table-mk02")
require("prototypes/buildings/grease-table-mk03")
require("prototypes/buildings/grease-table-mk04")

require("prototypes/buildings/compressor-mk02")
require("prototypes/buildings/compressor-mk03")
require("prototypes/buildings/compressor-mk04")

require("prototypes/buildings/gas-separator-mk02")
require("prototypes/buildings/gas-separator-mk03")
require("prototypes/buildings/gas-separator-mk04")

require("prototypes/buildings/nmf-mk02")
require("prototypes/buildings/nmf-mk03")
require("prototypes/buildings/nmf-mk04")

end

if mods['pyalienlife'] then
    require("prototypes/buildings/kmauts-enclosure-mk02")
    require("prototypes/buildings/kmauts-enclosure-mk03")
    require("prototypes/buildings/kmauts-enclosure-mk04")

    require("prototypes/buildings/genlab-mk02")
    require("prototypes/buildings/genlab-mk03")
    require("prototypes/buildings/genlab-mk04")

    require("prototypes/buildings/xyhiphoe-pool-mk02")
    require("prototypes/buildings/xyhiphoe-pool-mk03")
    require("prototypes/buildings/xyhiphoe-pool-mk04")
end

data.raw.fluid["gasoline"].fuel_value = '1.2MJ'
data.raw.fluid["acetylene"].fuel_value = "1MJ"

table.insert(data.raw['fluid-turret']['flamethrower-turret'].attack_parameters.fluids, {type = 'gasoline', damage_modifier = 2})
