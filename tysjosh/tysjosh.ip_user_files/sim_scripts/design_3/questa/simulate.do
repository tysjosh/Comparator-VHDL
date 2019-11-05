onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib design_3_opt

do {wave.do}

view wave
view structure
view signals

do {design_3.udo}

run -all

quit -force
