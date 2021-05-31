./qmk_firmware/keyboards/ergodox_ez/keymaps/mykeymap:
	rm -f "$@"
	ln -s ../../../../keymap "$@"

./qmk_firmware/.build/ergodox_ez_shine_mykeymap.hex: ./qmk_firmware/keyboards/ergodox_ez/keymaps/mykeymap
	make -C qmk_firmware ergodox_ez/shine:mykeymap

all: ./qmk_firmware/.build/ergodox_ez_shine_mykeymap.hex

flash: ./qmk_firmware/.build/ergodox_ez_shine_mykeymap.hex
	# Press the Reset button by inserting a paperclip into the reset hole in the
	# top right corner of the ErgoDox
	teensy-loader-cli -mmcu=atmega32u4 -w "$<"
