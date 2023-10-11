podman run \
    -d \
    -e "BRANCH_NAME=lineage-20.0" \
    -e "DEVICE_LIST=pstar" \
    -e "SIGN_BUILDS=true" \
    -e "WITH_GMS=true" \
    -e "SIGNATURE_SPOOFING=restricted" \
    -e "CCACHE_SIZE=5G" \
    -v "`pwd`/src:/srv/src" \
    -v "`pwd`/zips:/srv/zips" \
    -v "`pwd`/logs:/srv/logs" \
    -v "`pwd`/ccache:/srv/ccache" \
    -v "`pwd`/keys:/srv/keys" \
    -v "`pwd`/manifests:/srv/local_manifests" \
    lineageos4microg/docker-lineage-cicd
