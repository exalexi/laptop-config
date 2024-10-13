let
  custom = {
    background = "#1e1e2e";
    accent = "#f5c2e7";
    text = "#cdd6f4";
  };
in  {pkgs, config, ...}:{  
  programs.zsh = {
    enable = true;
    package = pkgs.zsh;


    enableCompletion = false;

    autosuggestion = {
      enable = true;
      #highlight = "fg=${custom.accent},bold";
    };

    cdpath = [ ];

    syntaxHighlighting = {
      enable = true;
    };

    shellAliases = {
      update = "sudo nixos-rebuild switch";
      ".." = "cd ..";
      "😼" = ''echo "nyaaaa :3"'';
      "😿" = ''echo "meowww 3:"'';
      "neofetched" = ''clear && neofetch --distro_shorthand on --os_arch off --kernel_shorthand off --cpu_cores logical --cpu_temp C --gpu_type all --gtk_shorthand on --colors 225 219 231 225 225 189 --bold off --ascii_colors 225 117 0 0 0 0'';
    };

    history = {
      ignoreAllDups = true;
      share = true;
      size = 100000;
      path = "${config.xdg.dataHome}/zsh/history";
    };

    historySubstringSearch.enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [ 
        "encode64"
        "git"
        "perms" 
        "sudo"
        "systemd"
        "systemadmin"
        "torrent"
        "z"
      ];
      
    };

    prezto = {
      enable = true;
      caseSensitive = false;
      color = true;
      
      prompt = {
        
      };

      extraModules = [
        "zpty"
      ];
    };

    initExtra = 
      ''
      bindkey '^I' autosuggest-accept
      neofetch --distro_shorthand on --os_arch off --kernel_shorthand off --cpu_cores logical --cpu_temp C --gpu_type all --gtk_shorthand on --colors 225 219 231 225 225 189 --bold off --ascii_colors 225 117 0 0 0 0
      '';
  };

  

  #programs.fzf.enable = true;
}