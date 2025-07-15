{ ... }:
{
  # basic configuration of git, please change to your own
  programs.git = {
    enable = true;
    delta.enable = true;
    userName = "Dekoder-py";
    userEmail = "dekod3r.py@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
    };

  };
}
