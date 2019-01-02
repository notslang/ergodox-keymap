./qmk_firmware/keyboards/ergodox_ez/keymaps/mykeymap:
	rm -f "$@"
	ln -s ../../../../keymap "$@"

all: ./qmk_firmware/keyboards/ergodox_ez/keymaps/mykeymap
	make -C qmk_firmware keyboard=ergodox_ez keymap=mykeymap
