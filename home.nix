{ pkgs, ... }: {
    home.username = "stivarch";
    home.homeDirectory = "/home/stivarch";
    home.stateVersion = "22.11";

    home.packages = with pkgs; [
        docker
        go
    ];

    programs.bash.enable = true;
}
