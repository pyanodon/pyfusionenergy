if settings.startup['add-tiers'].value and mods['pyrawores'] then
    local fusionmachines = {
        --'agitator',
        'automated-screener',
        --'bio-reactor',
        --'centrifugal-pan',
        --'compressor',
       -- 'gas-separator',
        --'genlab',
        --'grease-table',
       -- 'hydrocyclone',
        --'jig',
       -- 'kmauts-enclosure',
       -- 'mixer',
        --'nmf',
        --'plankton-farm',
        --'secondary-crusher',
        --'thickener',
        --'vacuum-pump',
        --'xyhiphoe-pool'
    }

    for _, mach in pairs(fusionmachines) do
        --log(mach)

        data.raw['assembling-machine'][mach].module_specification.module_slots = 1

        RECIPE {
            type = 'recipe',
            name = mach .. '-mk02',
            energy_required = 25,
            enabled = false,
            ingredients = {
                {mach, 1},
                {'duralumin', 15},
                {'lead-plate', 10},
                {'nexelit-plate', 15},
                {'advanced-circuit', 10}
            },
            results = {
                {mach .. '-mk02', 1}
            }
        }:add_unlock('machines-mk02')

        ITEM {
            type = 'item',
            name = mach .. '-mk02',
            icon = "__pyfusionenergy__/graphics/icons/" .. mach .. "-mk02.png",
            icon_size = 64,
            flags = {},
            subgroup = 'py-fusion-buildings-mk02',
            order = data.raw.item[mach].order,
            place_result = mach .. '-mk02',
            stack_size = 10,
            localised_name = mach .. ' MK02'
        }

        ENTITY {
            type = 'assembling-machine',
            name = mach .. '-mk02',
            icon = "__pyfusionenergy__/graphics/icons/" .. mach .. "-mk02.png",
            icon_size = 64,
            flags = {'placeable-neutral', 'player-creation'},
            minable = {mining_time = 0.5, result = mach .. '-mk02'},
            fast_replaceable_group = mach,
            max_health = 700,
            corpse = 'big-remnants',
            dying_explosion = 'big-explosion',
            collision_box = data.raw['assembling-machine'][mach].collision_box,
            selection_box = data.raw['assembling-machine'][mach].selection_box,
            match_animation_speed_to_activity = false,
            module_specification = {
                module_slots = 2
            },
            allowed_effects = {'consumption', 'speed', 'productivity', 'pollution'},
            crafting_categories = data.raw['assembling-machine'][mach].crafting_categories,
            crafting_speed = data.raw['assembling-machine'][mach].crafting_speed + 1,
            energy_source = data.raw['assembling-machine'][mach].energy_source,
            energy_usage = (string.match(data.raw['assembling-machine'][mach].energy_usage, '%d+') + 500) .. 'kW',
            --ingredient_count = 3,
            animation = data.raw['assembling-machine'][mach].animation,
            fluid_boxes = data.raw['assembling-machine'][mach].fluid_boxes or nil,
            vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
            working_sound = data.raw['assembling-machine'][mach].working_sound,
            localised_name = mach .. ' MK02'
		}

		data.raw['assembling-machine'][mach .. '-mk02'].animation.filename = '__pyfusion__/graphics/entity/.png'


        RECIPE {
            type = 'recipe',
            name = mach .. '-mk03',
            energy_required = 25,
            enabled = false,
            ingredients = {
                {mach .. '-mk02', 1},
                {'titanium-plate', 20},
                {'stainless-steel', 20},
                {'tin-plate', 20},
                {'processing-unit', 10}
            },
            results = {
                {mach .. '-mk03', 1}
            }
        }:add_unlock('machines-mk03')

        ITEM {
            type = 'item',
            name = mach .. '-mk03',
            icon = "__pyfusionenergy__/graphics/icons/" .. mach .. "-mk03.png",
            icon_size = 64,
            flags = {},
            subgroup = 'py-fusion-buildings-mk03',
            order = data.raw.item[mach].order,
            place_result = mach .. '-mk03',
            stack_size = 10,
            localised_name = mach .. ' MK03'
        }

        ENTITY {
            type = 'assembling-machine',
            name = mach .. '-mk03',
            icon = "__pyfusionenergy__/graphics/icons/" .. mach .. "-mk03.png",
            icon_size = 64,
            flags = {'placeable-neutral', 'player-creation'},
            minable = {mining_time = 0.5, result = mach .. '-mk03'},
            fast_replaceable_group = mach,
            max_health = 700,
            corpse = 'big-remnants',
            dying_explosion = 'big-explosion',
            collision_box = data.raw['assembling-machine'][mach].collision_box,
            selection_box = data.raw['assembling-machine'][mach].selection_box,
            match_animation_speed_to_activity = false,
            module_specification = {
                module_slots = 3
            },
            allowed_effects = {'consumption', 'speed', 'productivity', 'pollution'},
            crafting_categories = data.raw['assembling-machine'][mach].crafting_categories,
            crafting_speed = data.raw['assembling-machine'][mach].crafting_speed + 1.5,
            energy_source = data.raw['assembling-machine'][mach].energy_source,
            energy_usage = (string.match(data.raw['assembling-machine'][mach].energy_usage, '%d+') + 1000) .. 'kW',
            --ingredient_count = 3,
            animation = data.raw['assembling-machine'][mach].animation,
            fluid_boxes = data.raw['assembling-machine'][mach].fluid_boxes or nil,
            vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
            working_sound = data.raw['assembling-machine'][mach].working_sound,
            localised_name = mach .. ' MK03'
        }

        RECIPE {
            type = 'recipe',
            name = mach .. '-mk04',
            energy_required = 25,
            enabled = false,
            ingredients = {
                {mach .. '-mk03', 1},
                {'super-steel', 30},
                {'low-density-structure', 15},
                {'nbfe-alloy', 20}
            },
            results = {
                {mach .. '-mk04', 1}
            }
        }:add_unlock('machines-mk04')

        ITEM {
            type = 'item',
            name = mach .. '-mk04',
            icon = "__pyfusionenergy__/graphics/icons/" .. mach .. "-mk04.png",
            icon_size = 64,
            flags = {},
            subgroup = 'py-fusion-buildings-mk04',
            order = data.raw.item[mach].order,
            place_result = mach .. '-mk04',
            stack_size = 10,
            localised_name = mach .. ' MK04'
        }

        ENTITY {
            type = 'assembling-machine',
            name = mach .. '-mk04',
            icon = "__pyfusionenergy__/graphics/icons/" .. mach .. "-mk04.png",
            icon_size = 64,
            flags = {'placeable-neutral', 'player-creation'},
            minable = {mining_time = 0.5, result = mach .. '-mk04'},
            fast_replaceable_group = mach,
            max_health = 700,
            corpse = 'big-remnants',
            dying_explosion = 'big-explosion',
            collision_box = data.raw['assembling-machine'][mach].collision_box,
            selection_box = data.raw['assembling-machine'][mach].selection_box,
            match_animation_speed_to_activity = false,
            module_specification = {
                module_slots = 4
            },
            allowed_effects = {'consumption', 'speed', 'productivity', 'pollution'},
            crafting_categories = data.raw['assembling-machine'][mach].crafting_categories,
            crafting_speed = data.raw['assembling-machine'][mach].crafting_speed + 2,
            energy_source = data.raw['assembling-machine'][mach].energy_source,
            energy_usage = (string.match(data.raw['assembling-machine'][mach].energy_usage, '%d+') + 1500) .. 'kW',
            --ingredient_count = 3,
            animation = data.raw['assembling-machine'][mach].animation,
            fluid_boxes = data.raw['assembling-machine'][mach].fluid_boxes or nil,
            vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
            working_sound = data.raw['assembling-machine'][mach].working_sound,
            localised_name = mach .. ' MK04'
        }
    end
end
