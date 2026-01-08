; End G-code - Marlin Orca slicer
G91 ; Relative positioning
G1 E-2 F2700 ; Retract a bit
G1 E-5 X5 Y5 Z3 F3000 ; Retract
G90 ; Absolute positioning
G1 X5 Y300 F6000 ; Finishing print
M106 S0 ; Turn-off fan
M104 S0 ; Turn-off hotend
M140 S0 ; Turn-off bed
M84 X Y E ; Disable X, Y, and E steppers
