-- Holds circuit connection definitions for PyFE entities.
-- variation counts from 0 (Python-like).

circuit_connector_definitions["diamond-mine"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            {variation = 2, main_offset = util.by_pixel(60, 65), shadow_offset = {2.1, 2.8}, show_shadow = false},
            {variation = 2, main_offset = util.by_pixel(60, 65), shadow_offset = {2.1, 2.8}, show_shadow = false},
            {variation = 2, main_offset = util.by_pixel(60, 65), shadow_offset = {2.1, 2.8}, show_shadow = false},
            {variation = 2, main_offset = util.by_pixel(60, 65), shadow_offset = {2.1, 2.8}, show_shadow = false}
        }
    )

circuit_connector_definitions["molybdenum-mine"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            {variation = 26, main_offset = util.by_pixel(72, -35), shadow_offset = {2.55, 2.55}, show_shadow = true},
            {variation = 26, main_offset = util.by_pixel(72, -35), shadow_offset = {2.55, 2.55}, show_shadow = true},
            {variation = 26, main_offset = util.by_pixel(72, -35), shadow_offset = {2.55, 2.55}, show_shadow = true},
            {variation = 26, main_offset = util.by_pixel(72, -35), shadow_offset = {2.55, 2.55}, show_shadow = true}
        }
    )

circuit_connector_definitions["regolite-mine"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            {variation = 2, main_offset = util.by_pixel(-85, 82), shadow_offset = {-2.6, 2.8}, show_shadow = false},
            {variation = 2, main_offset = util.by_pixel(-85, 82), shadow_offset = {-2.6, 2.8}, show_shadow = false},
            {variation = 2, main_offset = util.by_pixel(-85, 82), shadow_offset = {-2.6, 2.8}, show_shadow = false},
            {variation = 2, main_offset = util.by_pixel(-85, 82), shadow_offset = {-2.6, 2.8}, show_shadow = false}
        }
    )

circuit_connector_definitions["agitator"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 32, main_offset = {0, .1}, shadow_offset = {1, 1}, show_shadow = false},
            {variation = 32, main_offset = {0, .1}, shadow_offset = {1, 1}, show_shadow = false},
            {variation = 32, main_offset = {0, .1}, shadow_offset = {1, 1}, show_shadow = false},
            {variation = 32, main_offset = {0, .1}, shadow_offset = {1, 1}, show_shadow = false},
        }
    )

circuit_connector_definitions["automated-screener"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 2, main_offset = {0, -4}, shadow_offset = {1, -3}, show_shadow = false},
            {variation = 2, main_offset = {0, -4}, shadow_offset = {1, -3}, show_shadow = false},
            {variation = 2, main_offset = {0, -4}, shadow_offset = {1, -3}, show_shadow = false},
            {variation = 2, main_offset = {0, -4}, shadow_offset = {1, -3}, show_shadow = false},
        }
    )

circuit_connector_definitions["bioreactor"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 26, main_offset = {-1.3, 1.6}, shadow_offset = {-.5, 2.6}, show_shadow = false},
            {variation = 26, main_offset = {-1.3, 1.6}, shadow_offset = {-.5, 2.6}, show_shadow = false},
            {variation = 26, main_offset = {-1.3, 1.6}, shadow_offset = {-.5, 2.6}, show_shadow = false},
            {variation = 26, main_offset = {-1.3, 1.6}, shadow_offset = {-.5, 2.6}, show_shadow = false},
        }
    )

circuit_connector_definitions["centrifugal-pan"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 9, main_offset = {-2.3, 2}, shadow_offset = {-1.3, 3.1}, show_shadow = false},
            {variation = 9, main_offset = {-2.3, 2}, shadow_offset = {-1.3, 3.1}, show_shadow = false},
            {variation = 9, main_offset = {-2.3, 2}, shadow_offset = {-1.3, 3.1}, show_shadow = false},
            {variation = 9, main_offset = {-2.3, 2}, shadow_offset = {-1.3, 3.1}, show_shadow = false},
        }
    )

circuit_connector_definitions["compressor"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 25, main_offset = {-2.8, -.3}, shadow_offset = {-1, 1.8}, show_shadow = false},
            {variation = 25, main_offset = {-2.8, -.3}, shadow_offset = {-1, 1.8}, show_shadow = false},
            {variation = 25, main_offset = {-2.8, -.3}, shadow_offset = {-1, 1.8}, show_shadow = false},
            {variation = 25, main_offset = {-2.8, -.3}, shadow_offset = {-1, 1.8}, show_shadow = false},
        }
    )

circuit_connector_definitions["fusion-reactor-mk1"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 39, main_offset = {1.45, -.1}, shadow_offset = {2.1, 1}, show_shadow = false},
            {variation = 39, main_offset = {1.45, -.1}, shadow_offset = {2.1, 1}, show_shadow = false},
            {variation = 39, main_offset = {1.45, -.1}, shadow_offset = {2.1, 1}, show_shadow = false},
            {variation = 39, main_offset = {1.45, -.1}, shadow_offset = {2.1, 1}, show_shadow = false},
        }
    )

circuit_connector_definitions["fusion-reactor-mk2"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 33, main_offset = {-.95, -.25}, shadow_offset = {0, 1}, show_shadow = false},
            {variation = 33, main_offset = {-.95, -.25}, shadow_offset = {0, 1}, show_shadow = false},
            {variation = 33, main_offset = {-.95, -.25}, shadow_offset = {0, 1}, show_shadow = false},
            {variation = 33, main_offset = {-.95, -.25}, shadow_offset = {0, 1}, show_shadow = false},
        }
    )

circuit_connector_definitions["gas-seperator"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 25, main_offset = {-1.7, 1.7}, shadow_offset = {-1.2, 2.4}, show_shadow = false},
            {variation = 25, main_offset = {-1.7, 1.7}, shadow_offset = {-1.2, 2.4}, show_shadow = false},
            {variation = 25, main_offset = {-1.7, 1.7}, shadow_offset = {-1.2, 2.4}, show_shadow = false},
            {variation = 25, main_offset = {-1.7, 1.7}, shadow_offset = {-1.2, 2.4}, show_shadow = false},
        }
    )

circuit_connector_definitions["genelab"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 2, main_offset = {2, 1.8}, shadow_offset = {2.4, 2.8}, show_shadow = false},
            {variation = 2, main_offset = {2, 1.8}, shadow_offset = {2.4, 2.8}, show_shadow = false},
            {variation = 2, main_offset = {2, 1.8}, shadow_offset = {2.4, 2.8}, show_shadow = false},
            {variation = 2, main_offset = {2, 1.8}, shadow_offset = {2.4, 2.8}, show_shadow = false},
        }
    )

circuit_connector_definitions["grease-table"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 2, main_offset = {-2.9, 2.2}, shadow_offset = {-2.5, 2.8}, show_shadow = false},
            {variation = 2, main_offset = {-2.9, 2.2}, shadow_offset = {-2.5, 2.8}, show_shadow = false},
            {variation = 2, main_offset = {-2.9, 2.2}, shadow_offset = {-2.5, 2.8}, show_shadow = false},
            {variation = 2, main_offset = {-2.9, 2.2}, shadow_offset = {-2.5, 2.8}, show_shadow = false},
        }
    )

circuit_connector_definitions["py-heat-exchanger"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 26, main_offset = {0, -.35}, shadow_offset = {1.25, 1.3}, show_shadow = false},
            {variation = 26, main_offset = {0, -.35}, shadow_offset = {1.25, 1.3}, show_shadow = false},
            {variation = 26, main_offset = {0, -.35}, shadow_offset = {1.25, 1.3}, show_shadow = false},
            {variation = 26, main_offset = {0, -.35}, shadow_offset = {1.25, 1.3}, show_shadow = false},
        }
    )

circuit_connector_definitions["hydrocyclone"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 25, main_offset = {-2.1, -.1}, shadow_offset = {-1, 1.2}, show_shadow = false},
            {variation = 25, main_offset = {-2.1, -.1}, shadow_offset = {-1, 1.2}, show_shadow = false},
            {variation = 25, main_offset = {-2.1, -.1}, shadow_offset = {-1, 1.2}, show_shadow = false},
            {variation = 25, main_offset = {-2.1, -.1}, shadow_offset = {-1, 1.2}, show_shadow = false},
        }
    )

circuit_connector_definitions["jig"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 18, main_offset = {-2.9, 2.2}, shadow_offset = {-2.75, 2.7}, show_shadow = true},
            {variation = 18, main_offset = {-2.9, 2.2}, shadow_offset = {-2.75, 2.7}, show_shadow = true},
            {variation = 18, main_offset = {-2.9, 2.2}, shadow_offset = {-2.75, 2.7}, show_shadow = true},
            {variation = 18, main_offset = {-2.9, 2.2}, shadow_offset = {-2.75, 2.7}, show_shadow = true},
        }
    )

circuit_connector_definitions["kmauts-enclosure"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 19, main_offset = {-3.3, -3.8}, shadow_offset = {-2.6, -2.2}, show_shadow = false},
            {variation = 19, main_offset = {-3.3, -3.8}, shadow_offset = {-2.6, -2.2}, show_shadow = false},
            {variation = 19, main_offset = {-3.3, -3.8}, shadow_offset = {-2.6, -2.2}, show_shadow = false},
            {variation = 19, main_offset = {-3.3, -3.8}, shadow_offset = {-2.6, -2.2}, show_shadow = false},
        }
    )

circuit_connector_definitions["mixer"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 2, main_offset = {-2.9, -1}, shadow_offset = {-1.5, 2}, show_shadow = false},
            {variation = 2, main_offset = {-2.9, -1}, shadow_offset = {-1.5, 2}, show_shadow = false},
            {variation = 2, main_offset = {-2.9, -1}, shadow_offset = {-1.5, 2}, show_shadow = false},
            {variation = 2, main_offset = {-2.9, -1}, shadow_offset = {-1.5, 2}, show_shadow = false},
        }
    )

circuit_connector_definitions["nmf"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 25, main_offset = {-2.9, 1}, shadow_offset = {-2.6, 1.4}, show_shadow = false},
            {variation = 25, main_offset = {-2.9, 1}, shadow_offset = {-2.6, 1.4}, show_shadow = false},
            {variation = 25, main_offset = {-2.9, 1}, shadow_offset = {-2.6, 1.4}, show_shadow = false},
            {variation = 25, main_offset = {-2.9, 1}, shadow_offset = {-2.6, 1.4}, show_shadow = false},
        }
    )

circuit_connector_definitions["plankton-farm"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 9, main_offset = {-2.1, 1.4}, shadow_offset = {-1.2, 2.1}, show_shadow = false},
            {variation = 9, main_offset = {-2.1, 1.4}, shadow_offset = {-1.2, 2.1}, show_shadow = false},
            {variation = 9, main_offset = {-2.1, 1.4}, shadow_offset = {-1.2, 2.1}, show_shadow = false},
            {variation = 9, main_offset = {-2.1, 1.4}, shadow_offset = {-1.2, 2.1}, show_shadow = false},
        }
    )

circuit_connector_definitions["secondary-crusher"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 25, main_offset = {-.8, -.4}, shadow_offset = {.2, 1.4}, show_shadow = false},
            {variation = 25, main_offset = {-.8, -.4}, shadow_offset = {.2, 1.4}, show_shadow = false},
            {variation = 25, main_offset = {-.8, -.4}, shadow_offset = {.2, 1.4}, show_shadow = false},
            {variation = 25, main_offset = {-.8, -.4}, shadow_offset = {.2, 1.4}, show_shadow = false},
        }
    )

circuit_connector_definitions["thickener"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 25, main_offset = {-2.8, -1.2}, shadow_offset = {-1.7, .5}, show_shadow = false},
            {variation = 25, main_offset = {-2.8, -1.2}, shadow_offset = {-1.7, .5}, show_shadow = false},
            {variation = 25, main_offset = {-2.8, -1.2}, shadow_offset = {-1.7, .5}, show_shadow = false},
            {variation = 25, main_offset = {-2.8, -1.2}, shadow_offset = {-1.7, .5}, show_shadow = false},
        }
    )

circuit_connector_definitions["vacuum-pump"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 2, main_offset = {0, .35}, shadow_offset = {0, 1}, show_shadow = false},
            {variation = 2, main_offset = {0, .35}, shadow_offset = {0, 1}, show_shadow = false},
            {variation = 2, main_offset = {0, .35}, shadow_offset = {0, 1}, show_shadow = false},
            {variation = 2, main_offset = {0, .35}, shadow_offset = {0, 1}, show_shadow = false},
        }
    )

circuit_connector_definitions["xyhiphoe-pool"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        {
            {variation = 2, main_offset = {-.3, .8}, shadow_offset = {1.2, 2.4}, show_shadow = false},
            {variation = 2, main_offset = {-.3, .8}, shadow_offset = {1.2, 2.4}, show_shadow = false},
            {variation = 2, main_offset = {-.3, .8}, shadow_offset = {1.2, 2.4}, show_shadow = false},
            {variation = 2, main_offset = {-.3, .8}, shadow_offset = {1.2, 2.4}, show_shadow = false},
        }
    )