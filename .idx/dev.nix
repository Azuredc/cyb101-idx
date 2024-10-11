{ pkgs, ... }: {
  channel = "stable-23.11";
  packages = [];
  env = {};
  services.docker.enable = true;
  idx = {
    workspace = {
      onCreate = {
        docker_pull = "docker pull codepathdockerhub/cyber:cyb-101";
      };
      onStart = {
        default.openFiles = [ "README.md" ];
        docker_start = "( docker start codepath-cyb-101 &>/dev/null
        && docker container exec -u 0:0 codepath-cyb-101
        su -c 'chown 0:0 /usr/bin/sudo && chmod 4755 /usr/bin/sudo && chown -R codepath: ~codepath'
        && docker container exec -it codepath-cyb-101 bash
        ) || docker run -it --name codepath-cyb-101 --volume codepath-cyb-101:/home/codepath codepathdockerhub/cyber:cyb-101";
      };
    };
  };
}
