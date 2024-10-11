{ pkgs, ... }: {
  channel = "stable-23.11";
  packages = [];
  env = {};
  services.docker.enable = true;
  idx = {
    workspace = {
      onCreate = {
        docker = "docker pull codepathdockerhub/cyber:cyb-101";
      };
      onStart = {
        default.openFiles = [ "README.md" ];
        docker = "docker start -ai codepath-cyb-101 &>/dev/null || docker run -it --name codepath-cyb-101 --volume codepath-cyb-101:/home/codepath codepathdockerhub/cyber:cyb-101";
      };
    };
  };
}
