all:
	rm ./qmk_firmware/keyboards/ergodox_ez/keymaps/mykeymap
	ln -s ../../../../keymap ./qmk_firmware/keyboards/ergodox_ez/keymaps/mykeymap
	make -C qmk_firmware keyboard=ergodox_ez keymap=mykeymap
