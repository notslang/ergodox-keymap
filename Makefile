./qmk_firmware/keyboards/ergodox_ez/keymaps/mykeymap:
	rm -f "$@"
	ln -s ../../../../keymap "$@"

./qmk_firmware/.build/ergodox_ez_mykeymap.hex: ./qmk_firmware/keyboards/ergodox_ez/keymaps/mykeymap
	make -C qmk_firmware keyboard=ergodox_ez keymap=mykeymap

all: ./qmk_firmware/.build/ergodox_ez_mykeymap.hex

flash: ./qmk_firmware/.build/ergodox_ez_mykeymap.hex
	# Press the Reset button by inserting a paperclip into the reset hole in the
	# top right corner of the ErgoDox
	teensy-loader-cli -mmcu=atmega32u4 -w "$<"
