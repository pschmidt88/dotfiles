function colima-refresh-env --description 'Refresh cached TESTCONTAINERS_HOST_OVERRIDE from colima'
    set -Ux TESTCONTAINERS_HOST_OVERRIDE (colima ls -j | jq -r '.address')
    echo "TESTCONTAINERS_HOST_OVERRIDE=$TESTCONTAINERS_HOST_OVERRIDE"
end
