{ pkgs, config, ... }:
{
  programs.zsh = {
    enable = true;
    package = pkgs.zsh;

    shellAliases = {
      update = "sudo rm /home/lex/.config/VSCodium/User/settings.json && sudo nixos-rebuild switch";
      ".." = "cd ..";
      "😼" = ''echo "nyaaaa :3"'';
      "😿" = ''echo "meowww 3:"'';
      "neofetched" =
        ''clear && neofetch --distro_shorthand on --os_arch off --kernel_shorthand off --cpu_cores logical --cpu_temp C --gpu_type all --gtk_shorthand on --colors 225 219 231 225 225 189 --bold off --ascii_colors 225 117 0 0 0 0'';
      "🏳️‍⚧️" = "firefox https://hrtcafe.net";
      "lumi" = "yippie 😺";
      "sshilo" = "ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 -oHostKeyAlgorithms=+ssh-rsa";
    };

    initExtra = ''
      neofetch --distro_shorthand on --os_arch off --kernel_shorthand off --cpu_cores logical --cpu_temp C --gpu_type all --gtk_shorthand on --colors 225 219 231 225 225 189 --bold off --ascii_colors 225 117 0 0 0 0
    '';
  };

  #programs.fzf.enable = true;
}
