{ pkgs, lib, ... }: 	{
  
  home.pointerCursor = lib.mkForce {
    name = "capitaine-cursors";
    package = pkgs.capitaine-cursors;
    #size = 40;
    gtk.enable = true;
    x11.enable = true;
  };
  gtk = {
    cursorTheme = {
      name = "capitaine-cursors";
      package = pkgs.capitaine-cursors;
      #size = 40;
    };	
  };
}