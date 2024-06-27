{ ... }:
{
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        font = "IosevkaTermSlab Nerd Font:weight=bold:size=14";
        line-height = 25;
        fields = "name,generic,comment,categories,filename,keywords";
        terminal = "kitty";
        prompt = "' ➜  '" ;
        icon-theme = "Papirus-Nord";
        layer = "top";
        lines = 10;
        width = 35;
        horizontal-pad = 25;
        inner-pad = 5;
      };
      colors = {
        background = "cdd3dd";
        text = "2E3440";
        match = "EBCB8B";
        selection = "7b99b7";
        selection-match = "2E3440";
        selection-text = "ECEFF4";
        border = "4C566A";
      };
      border = {
        radius = 15;
        width = 3;
      };
    };
  };
}