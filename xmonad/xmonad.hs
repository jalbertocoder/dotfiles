import XMonad
import XMonad.Util.EZConfig (additionalKeysP)

myTerminal = "alacritty"
myModMask = mod4Mask
myBorderWidth = 2
myAdditionalKeys = [ ("M-r", spawn "rofi -show drun") ]
myNormalBorderColor = "#4c566a"
myFocusedBorderColor = "#5e81ac"

main :: IO ()
main = xmonad $ def
	{ terminal = myTerminal
 , modMask = myModMask
 , borderWidth = myBorderWidth
 , normalBorderColor = myNormalBorderColor
 , focusedBorderColor = myFocusedBorderColor
 }
 `additionalKeysP`
 myAdditionalKeys

