function colima --wraps=colima --description 'Wrapper for Colima that runs post-start hook'
  # run the real colima binary
  command colima $argv

  if test (count $argv) -ge 1
    if test $argv[1] = "start"
      sleep 1
      set host (colima ls -j | jq -r '.address')

      set -gx DOCKER_HOST unix://$HOME/.colima/default/docker.sock
      set -gx TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE /var/run/docker.sock
      set -Ux TESTCONTAINERS_HOST_OVERRIDE $host

      echo "✅ Colima started. Environment variables set:"
      echo "   DOCKER_HOST=$DOCKER_HOST"
      echo "   TESTCONTAINERS_HOST_OVERRIDE=$TESTCONTAINERS_HOST_OVERRIDE"
      echo "   TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE=$TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE"

    end
  end
end
