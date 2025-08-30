-- Holds circuit connection definitions for PyFE entities.
-- variation counts from 0 (Python-like).

circuit_connector_definitions[ "diamond-mine" ] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            { variation = 2, main_offset = util.by_pixel(60, 65), shadow_offset = util.by_pixel(57, 77), show_shadow = false },
            { variation = 2, main_offset = util.by_pixel(60, 65), shadow_offset = util.by_pixel(57, 77), show_shadow = false },
            { variation = 2, main_offset = util.by_pixel(60, 65), shadow_offset = util.by_pixel(57, 77), show_shadow = false },
            { variation = 2, main_offset = util.by_pixel(60, 65), shadow_offset = util.by_pixel(57, 77), show_shadow = false }
        }
    )

circuit_connector_definitions[ "molybdenum-mine" ] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            { variation = 26, main_offset = util.by_pixel(72, -35), shadow_offset = util.by_pixel(69, -23), show_shadow = false },
            { variation = 26, main_offset = util.by_pixel(72, -35), shadow_offset = util.by_pixel(69, -23), show_shadow = false },
            { variation = 26, main_offset = util.by_pixel(72, -35), shadow_offset = util.by_pixel(69, -23), show_shadow = false },
            { variation = 26, main_offset = util.by_pixel(72, -35), shadow_offset = util.by_pixel(69, -23), show_shadow = false }
        }
    )

circuit_connector_definitions[ "regolite-mine" ] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            { variation = 2, main_offset = util.by_pixel(-85, 82), shadow_offset = util.by_pixel(84, 60), show_shadow = false },
            { variation = 2, main_offset = util.by_pixel(-85, 82), shadow_offset = util.by_pixel(84, 60), show_shadow = false },
            { variation = 2, main_offset = util.by_pixel(-85, 82), shadow_offset = util.by_pixel(84, 60), show_shadow = false },
            { variation = 2, main_offset = util.by_pixel(-85, 82), shadow_offset = util.by_pixel(84, 60), show_shadow = false }
        }
    )
