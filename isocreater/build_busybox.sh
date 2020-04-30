tar -xvf busybox-1.31.1.tar.bz2
cd busybox-1.31.1
make defconfig
make -j10
make install
cd _install
ln -sv bin/busybox init
find ./ | cpio -o |gzip -9 -n > ../../livecd/tinylinux/initrd.gz
cd ../..
rm -rf busybox-1.31.1

