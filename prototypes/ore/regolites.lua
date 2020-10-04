DATA {
    type = "autoplace-control",
    name = "regolites",
    richness = true,
    order = "b-e",
    category = "resource",
}

DATA {
    type = "noise-layer",
    name = "regolites"
}

ENTITY {
    type = "resource",
    name = "regolites",
    category = "regolite",
    icon = "__pyfusionenergygraphics__/graphics/icons/ores/regolite-resource.png",
	icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.917, g = 0.570, b = 0.378},
    highlight = true,
    map_grid = false,
    minable = {
        -- mining_particle = "regolites-particle",
        mining_time = 4,
        results = {
			{type = "item", name = "regolite-rock", amount = 1},
        }
    },
    resource_patch_search_radius = 12,
    collision_box = {{-3.5, -3.5}, {3.5, 3.5}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = resource_autoplace.resource_autoplace_settings {
        name = "regolites",
        order = "b",
        base_density = 10,
        base_spots_per_km2 = 1.25,
        has_starting_area_placement = false,
        random_spot_size_minimum = 2,
        random_spot_size_maximum = 4,
        regular_rq_factor_multiplier = 1,
        starting_rq_factor_multiplier = 2,
        candidate_spot_count = 20
    },
    stage_counts = {0},
    stages = {
        sheet = {
            filename = "__pyfusionenergygraphics__/graphics/entity/ores/regolite-resource.png",
            priority = "extra-high",
            width = 240,
            height = 250,
            frame_count = 1,
            variation_count = 1,
            shift = {0.35, -0.2}
        }
    }
}
