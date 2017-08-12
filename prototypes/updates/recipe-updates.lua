local PYC = require("config")

--ADDING NIOBIUM INTO LOW DENSITY STRUCTURE
do
    local normal = {type = "item", name = "niobium-plate", amount = 5}
    local expensive = {type = "item", name = "niobium-plate", amount = 10}
    add_ing("low-density-structure", normal, expensive)
end

--ADDING FUELROD INTO ROCKET-FUEL INTO ROCKET-FUEL
do
    local normal = {type = "item", name = "fuelrod-mk01", amount = 2}
    local expensive = {type = "item", name = "fuelrod-mk01", amount = 4}
    add_ing("rocket-fuel", normal, expensive)
end
