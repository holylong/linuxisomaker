cp grub ./livecd/boot/grub/default/
mkisofs -R -b boot/grub/default/grub -no-emul-boot -boot-load-size 4 -boot-info-table -o tinylinux.iso livecd
rm -rf livecd
