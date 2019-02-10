import Control.Monad
import Control.Monad.IO.Class
import Data.IORef
import Graphics.UI.Gtk hiding (Action, backspace)

main::IO()
main = do
  void initGUI
  window <- windowNew
  set window [ windowTitle := "Minesweeper" 
             , windowResizeable := True
             , windowDefaultWidth := 230
             , windowDefaultHeight:= 300 ]
  widgetShowAll window
  mainGUI
