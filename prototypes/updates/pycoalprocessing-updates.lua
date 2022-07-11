
--TECHNOLOGY
TECHNOLOGY("energy-1"):add_prereq('boron'):remove_prereq('coal-processing-1')

TECHNOLOGY("fine-electronics"):remove_prereq("plastics")

RECIPE("borax-washing"):remove_unlock('energy-1'):add_unlock('boron')

RECIPE("boron-trioxide"):remove_unlock('lab-instrument'):add_unlock("boron")

RECIPE("boric-acid"):remove_unlock('lab-instrument'):add_unlock("boron")

RECIPE("diborane"):remove_unlock('energy-1'):add_unlock("boron")

RECIPE("borax-mine"):remove_unlock('energy-1'):add_unlock("boron")

RECIPE("filtration-media"):remove_unlock("advanced-oil-processing"):add_unlock("filtration-mk02")
