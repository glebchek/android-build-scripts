podman run \
    -d \
    -e "BRANCH_NAME=lineage-18.1" \
    -e "DEVICE_LIST=mido" \
    -e "SIGN_BUILDS=true" \
    -e "SIGNATURE_SPOOFING=restricted" \
    -e "CUSTOM_PACKAGES=GmsCore GsfProxy FakeStore MozillaNlpBackend NominatimNlpBackend com.google.android.maps.jar FDroid FDroidPrivilegedExtension additional_repos.xml" \
    -e "INCLUDE_PROPRIETARY=false" \
    -e "CCACHE_SIZE=5G" \
    -e "UNIFIEDNLP_SUPPORT=true" \
    -v "`pwd`/src:/srv/src" \
    -v "`pwd`/zips:/srv/zips" \
    -v "`pwd`/logs:/srv/logs" \
    -v "`pwd`/ccache:/srv/ccache" \
    -v "`pwd`/keys:/srv/keys" \
    -v "`pwd`/manifests:/srv/local_manifests" \
    lineageos4microg/docker-lineage-cicd
