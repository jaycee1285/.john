{config, ...}:

{
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        # General settings
        reload_style_on_change = true;

        output = [
          "DP-1"
        ];
        
        layer = "bottom";
        position = "bottom";

        spacing = 0;
        margin = "5";
        height = 40

        # Modules definition
        
        modules-left = ["custom/logo","wlr/taskbar"];


        modules-right = ["tray","network","pulseaudio","clock", "custom/power"];

        # Modules Configuration
        "clock" = {
        "format": " {:%H:%M}";
        "tooltip-format": "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        };

        "tray" = {
          icon-size = 17;
          spacing = 3;
        };
    "pulseaudio": {
       "scroll-step": 5' 
        "format":"{icon}   {volume}%";
        "format-icons": {
        "default": ["","","",""]
      };
      "on-click":"pavucontrol"
    };

    "network": {
	"interface": "wlan0";
	"format": "{ifname}";
	"format-wifi":"   {essid} ";
	"format-ethernet": "{ifname} ";
	"format-disconnected":"󰖪 ";
	"format-disconnected":"󰖪 ";
	"tooltip-format": "{ifname}";
	"tooltip-format-wifi": "{essid} ({signalStrength}%) ";
	"tooltip-format-ethernet": "{ifname} ";
	"tooltip-format-disconnected": "Disconnected";
	"max-length": 60,
    "on-click": "nm-applet";
    };

   "custom/logo": {
    "format": "     ";
    "interval": "once";
    "tooltip": false;
    "on-click":"fuzzel";
},
   "custom/power": {
    "format": "     ";
    "interval": "once";
    "tooltip": false;
    "on-click":"nwg-bar";
},
    "wlr/taskbar": {
	"format": "{icon}";
	"icon-size": 30;
	"icon-theme": "papirus-dark";
	"tooltip-format": "{title}";
	"on-click": "minimize-raise";
	"on-click-middle": "close";
	"ignore-list": [
	    "waybar"
	];
};
      };
    };

    style = 
    ''
      # General settings
      * {
        font-family: FontAwesome, IosevkaTermSlab, sans-serif;
        font-size: 15px;
      }

      window#waybar {
        background: #12120f;
        color: #C8C093;
        border-radius: 10px;
      }
      #custom-logo,
      #network,
      #pulseaudio,
      #tray,
      #clock{
      margin: 3px;
      padding: 5px;
      padding-top: 1px;
      padding-bottom: 1px;
      font-size: 15px;
      background-color: #8B8047;
      border-radius: 8px;
}
 
      #clock{
      margin-right: 0px; 
}


      #custom-logo{
        font-size: 30px;
        background-image: url('/home/john/dotfiles/nix-snowflake.svg');
        background-position: center;
        background-repeat: no-repeat;
        background-size: contain;
}
      ''; 
  };
}