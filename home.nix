{ lib, pkgs, ... }:
{
  home = {
    packages = with pkgs; [
      hello
    ];

gtk = {
    enable = true;
    font.name = "Buenard 13";
    theme = {
      name = "Kanagawa-B-LB";
      package = pkgs.kanagawa-gtk-theme;
    };

    iconTheme = {
      name = "Kanagawa";
      package = pkgs.kanagawa-icon-theme;
    };

    cursorTheme = {
      name = "Phinger-Cursors-Light";
      package = pkgs.phinger-cursors;
    };
  };
{
  enable = true;
  platformTheme = "qtct";
  style.name = "kvantum";
};

  home.pointerCursor = {
    gtk.enable = true;
    # x11.enable = true;
    package = pkgs.phinger-cursors;
    name = "Phinger-Cursors-Light";
  };    
    
    programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions; [
		astro-build.astro-vscode
		svelte.svelte-vscode-nightly
		bradlc.vscode-tailwindcss
		sainnhe.gruvbox-material
		metaphore.kanagawa-vscode-color-theme
		naumovs.color-highlight
    ];
  };
    
    fonts.packages = with pkgs; [
  (nerdfonts.override { fonts = [ "IosevkaTermSlab" ]; })
  (google-fonts.override {fonts = [ "Buenard" "Libre Franklin" "Overpass" "Overpass Mono" "Philosopher" "Mulish" "Tenor Sans" "Gentium Book Plus" "Sintony" "Poppins" "Oswald"
  "Merriweather" "Quattrocento" "Lora" "Raleway" "Cormorant Garamond" "Changa" "Merriweather Sans" "Arsenal"  ]; })
];

    # This needs to actually be set to your username
    username = "john";
    homeDirectory = "/home/john";

    # You do not need to change this if you're reading this in the future.
    # Don't ever change this after the first build.  Don't ask questions.
    stateVersion = "24.05";
  };
}
