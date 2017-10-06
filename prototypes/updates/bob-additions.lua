-------------------------------------------------------------------------------
--[[New stuff when bobs is present]]--
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
--LIQUID-NITROGEN
local liquid_nitrogen= {
    type = "recipe",
    name = "liquid-nitrogen",
    category = "compressor",
    enabled = "false",
    energy_required = 1,
    ingredients ={
		{type="fluid", name="nitrogen", amount=50},
		{type="fluid", name="water", amount=100},
    },
    results=
    {
        {type="fluid", name="liquid-nitrogen", amount=5},
		{type="fluid", name="steam", amount=100},
    },
    main_product= "liquid-nitrogen",
    icon = "__pyfusionenergy__/graphics/icons/compress-nitrogen.png",
    subgroup = "py-fusion-gases",
    order = "a",
}

data:extend{
	liquid_nitrogen
}

bobmods.lib.tech.add_recipe_unlock("helium-processing", "liquid-nitrogen")