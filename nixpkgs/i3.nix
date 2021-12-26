{ config, lib, pkgs, ... }:

let
	mod = "Mod1";
in {
	home.packages = with pkgs; [
		rofi
	];

	xsession.scriptPath = ".hm-xsession";
	
	xsession.windowManager.i3 = { 
		enable = true;

		config = {
			window = { 
				titlebar = false;
			};

			fonts = [ "NotoMono Nerd Font Mono 10" ];

			keybindings = lib.mkOptionDefault {
			  "${mod}+space" = "exec --no-startup-id \"${pkgs.rofi}/bin/rofi -combi-modi 'window,drun,run,ssh' -show drun -sidebar-mode\"";	
				
				"${mod}+h" = "focus left";
				"${mod}+j" = "focus down";
				"${mod}+k" = "focus up";
				"${mod}+l" = "focus right";

				"${mod}+v" = "split h; exec notify-send 'tile horizontally'";
        "${mod}+w" = "split v; exec notify-send 'tile horizontally'";

				"${mod}+Return" = "exec ${pkgs.alacritty}/bin/alacritty";
			};
		};
		
	};

}
