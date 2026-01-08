; start G-code - Orca Slicer
M220 S100 ; Set the feed rate to 100%
M221 S100 ; Set the flow rate to 100%
M104 S140 ; Preheat the nozzle to 140°C
M190 S[bed_temperature_initial_layer_single]
G90 ; Use absolute positioning
G28 ; Home all axes (X, Y, Z)
G1 Z10 F300 ; Lift the nozzle to 10mm for clearance
G1 X67.5 Y0 F6000 ; Move to start position for filament priming
G1 Z0 F300 ; Lower nozzle to bed
M109 S[nozzle_temperature_initial_layer] ; Wait until the nozzle reaches the desired temperature
G92 E0 ; Reset the extruder position
G1 X67.5 Y0 Z0.4 F300 ; Move to priming start
G1 X167.5 E30 F400 ; Prime the nozzle by extruding a line of filament
G1 Z0.6 F120 ; Slightly lift the nozzle
G1 X162.5 F3000 ; Move nozzle to the start of the print area
G92 E0 ; Reset the extruder for the actual print
