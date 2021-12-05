TECHNOLOGY{
    type = 'technology',
    name = 'kovarex-enrichment-process-2',
    icon_size = 256,

    icon = '__pyfusionenergygraphics__/graphics/technology/kovarex-enrichment-process-2.png',
    effects = {},
    prerequisites = {'kovarex-enrichment-process', 'molybdenum-processing'},
    unit = {
        ingredients = {
            {'automation-science-pack', 6},
            {'logistic-science-pack', 4},
            {'chemical-science-pack', 2},
            {'military-science-pack', 2},
            {'production-science-pack', 1}
        },
        time = 30,
        count = 1500
    },
    order = 'e-p-b-d'
}
