for _, force in pairs(game.forces) do
    if force.technologies["diamond-mining"] and force.technologies["diamond-mining"].researched then
        if force.recipes["vacuum"] then
            force.recipes["vacuum"].enabled = true
        end
    end
end
