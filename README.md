## Recovery Device Tree for the Samsung Galaxy J7 (6)

## How-to compile it:

To build:

```sh
mkdir twrp ; cd twrp ; repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0 ; mkdir .repo/local_manifests/ ; nano .repo/local_manifests/j7xelte.xml

<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <project name="yespap/android_device_samsung_j7xelte" path="device/samsung/j7xelte" remote="github" revision="master" />
</manifest>

repo sync -c --force-sync --no-clone-bundle --optimized-fetch --prune --no-tags -j10
. build/envsetup.sh
export USE_CCACHE=1
export LC_ALL=C
lunch omni_j7xelte-eng
make recoveryimage -j10
