{ pkgs, ... }: 	{
  
  catppuccin = {
    enable = true;
    flavor = "mocha";	
    accent = "pink";
  };

  gtk.catppuccin = {	
    enable = true;
    accent = "pink";
    flavor = "mocha";
  };
}