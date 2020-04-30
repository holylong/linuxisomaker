make defconfig
make -j10
cd ./isocreater
source makeboot.sh
source build_busybox.sh
cd ../
cp ./arch/x86/boot/bzImage ./isocreater/livecd/tinylinux/
cd ./isocreater
source build_iso.sh
cd ..
make clean

