for _, force in pairs(game.forces) do
    if force.technologies["crusher"] and force.technologies["crusher"].researched then
        if force.recipes["crushing-molybdenite"] then
            force.recipes["crushing-molybdenite"].enabled = true
        end
        if force.recipes["milling-molybdenite"] then
            force.recipes["milling-molybdenite"].enabled = true
        end
    end
end
