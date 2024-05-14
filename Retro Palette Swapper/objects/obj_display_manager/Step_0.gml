///Zoom window
if(curWindowWidth != (os_browser == browser_not_a_browser ? WIN_W : browser_width) || 
   curWindowHeight != os_browser == browser_not_a_browser ? WIN_H : browser_height)
  updateViewSize();