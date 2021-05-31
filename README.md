# my ergodox keymap

Steps to compile:

1. Make sure you've set up your environment per the [QMK docs](https://docs.qmk.fm/#/newbs_getting_started?id=set-up-your-environment) so compilation would actually work.
2. Clone down the QMK Firmware into the project directory with:

  ```bash
  git clone git@github.com:zsa/qmk_firmware.git
  ```

3. Build submodules for the QMK firmware.

  ```bash
  cd qmk_firmware
  make git-submodule
  cd ..
  ```
