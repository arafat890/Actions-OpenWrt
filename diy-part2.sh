# 1. Permanent Online Repository Feeds Integration
mkdir -p files/etc/apk/repositories.d
cat > files/etc/apk/repositories.d/distfeeds.list << 'EOF'
https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a53/base/packages.adb
https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a53/luci/packages.adb
https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a53/packages/packages.adb
https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a53/routing/packages.adb
https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa53/packages/packages.adb
EOF

# 2. Add Essential Packages & SQM Directly to Config
echo "CONFIG_PACKAGE_luci-app-sqm=y" >> .config
echo "CONFIG_PACKAGE_sqm-scripts=y" >> .config
echo "CONFIG_PACKAGE_kmod-sched-core=y" >> .config
echo "CONFIG_PACKAGE_kmod-sched-cake=y" >> .config
echo "CONFIG_PACKAGE_kmod-ifb=y" >> .config
echo "CONFIG_PACKAGE_apk-cli=y" >> .config
