-- Holds circuit connection definitions for PyFE entities.
-- variation counts from 0 (Python-like).

circuit_connector_definitions["molybdenum-mine"] = circuit_connector_definitions.create
(
  universal_connector_template,
  {--Directions are up, right, down, left.
    { variation = 26, main_offset = util.by_pixel(72, -35), shadow_offset = util.by_pixel(69, -23), show_shadow = false },
    { variation = 26, main_offset = util.by_pixel(72, -35), shadow_offset = util.by_pixel(69, -23), show_shadow = false },
    { variation = 26, main_offset = util.by_pixel(72, -35), shadow_offset = util.by_pixel(69, -23), show_shadow = false },
    { variation = 26, main_offset = util.by_pixel(72, -35), shadow_offset = util.by_pixel(69, -23), show_shadow = false }
  }
)
