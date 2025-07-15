{
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    ../modules/zsh/default.nix
    ../modules/git/default.nix
  ];
  home.username = "kyle";
  home.homeDirectory = "/home/kyle";
  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    inputs.Akari.packages.${system}.default
    # here is some command line tools I use frequently
    # feel free to add your own or remove some of them

    fastfetch
    yazi # terminal file manager
    lazygit
    gh

    # archives
    zip
    xz
    unzip
    p7zip

    # utils
    ripgrep # recursively searches directories for a regex pattern
    eza # A modern replacement for ‘ls’
    fzf # A command-line fuzzy finder

    # networking tools
    nmap # A utility for network discovery and security auditing

    # misc
    which

    # nix related
    #
    # it provides the command `nom` works just like `nix`
    # with more details log output
    nix-output-monitor

    btop # replacement of htop/nmon
    iotop # io monitoring
    iftop # network monitoring

    # system call monitoring
    strace # system call monitoring
    ltrace # library call monitoring
    lsof # list open files

    # system tools
    sysstat
    lm_sensors # for `sensors` command
    ethtool
    pciutils # lspci
    usbutils # lsusb
  ];

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "25.05";
}
