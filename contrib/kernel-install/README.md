# kernel-install plugin

`50-make-initrd.install` lets [kernel-install(8)](https://www.freedesktop.org/software/systemd/man/latest/kernel-install.html)
build the initramfs with make-initrd when `kernel-install add` is called
without an initrd argument. The image is written to the staging area and
picked up by the layout plugins (`90-loaderentry`, `90-uki-copy`).

The plugin is active when `initrd_generator` is `make-initrd` or unset.
`50-make-initrd.conf` sets it to `make-initrd` by default; override it in
`/etc/kernel/install.conf`.

With `layout=uki` and `uki_generator=make-initrd` the plugin builds a
unified kernel image with the `uki` feature instead.
