transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/paulo/Dropbox/ProjetoLSD/Finais/V2/WashModule.vhd}
vcom -93 -work work {C:/Users/paulo/Dropbox/ProjetoLSD/Finais/V2/WashFSM.vhd}
vcom -93 -work work {C:/Users/paulo/Dropbox/ProjetoLSD/Finais/V2/loadTimer.vhd}

