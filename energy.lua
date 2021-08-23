local battery = peripheral.find("thermal:energy_cell")
local energy = battery.getEnergy
print(energy)