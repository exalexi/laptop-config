{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    package = pkgs.zsh;
    enableCompletion = true;
    autosuggestion = {
      enable = true;
      strategy = [
        "history"
        "completion"
      ];
    };
    syntaxHighlighting.enable = true;
    enableVteIntegration = true;

    history = {
      size = 10000;
      ignoreAllDups = true;
      path = "$HOME/.zsh_history";
      ignorePatterns = [
        "rm *"
        "pkill *"
        "cp *"
        "sudo nixos-rebuild *"
        "ls *"
      ];
    };

    shellAliases = {
      update = "sudo nixos-rebuild switch";
      updateboot = "sudo nixos-rebuild boot";
      vsconfig = "sudo rm /home/lex/.config/Code/User/settings.json";
      ".." = "cd ..";
      "😼" = ''echo "nyaaaa :3"'';
      "😿" = ''echo "meowww 3:"'';
      "neofetched" =
        ''clear && neofetch --distro_shorthand on --os_arch off --kernel_shorthand off --cpu_cores logical --cpu_temp C --gpu_type all --gtk_shorthand on --colors 225 219 231 225 225 189 --bold off --ascii_colors 225 117 0 0 0 0'';
      "🏳️‍⚧️" = "firefox https://hrtcafe.net";
      "lumi" = "yippie 😺";
      "sshilo" = "ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 -oHostKeyAlgorithms=+ssh-rsa";
    };

    # Turned off (pretty) time waster for now
    #initContent = ''
    #  neofetch --distro_shorthand on --os_arch off --kernel_shorthand off --cpu_cores logical --cpu_temp C --gpu_type all --gtk_shorthand on --colors 225 219 231 225 225 189 --bold off --ascii_colors 225 117 0 0 0 0
    #'';

  };

  catppuccin.zsh-syntax-highlighting = {
    enable = true;
    flavor = "mocha";
  };
}
