# How to edit the menu:

### 1 - Setting images, button-icon & Server data
At the top of config.cpp there are 4 variables:
  - connect220:      Set IP and Port of your server -['ip adress', port, '']
  - backgroundVideo: Path to background video (Must be in .OGV format)
  - backgroundImage: Path to image shown when -skipIntro is used, or loading.
  - buttonIcon:      Path to image used as the button.
  - buttonTip:       Text shown when mouse is hovering over the button.

### 2 - Storing changes.
  - Use armatool to binarize the config.cpp to config.bin
  - Repack the PBO

## Original Author:
This software is a heavily edited version of Nicolas BOITEUX's template.
You can find the template here:
https://github.com/code34/mainmenu