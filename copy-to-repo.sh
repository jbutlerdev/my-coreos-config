#!/bin/bash

BUILD=/root/tmp/my-coreos
PATH=/builds/latest/x86_64

/bin/scp ${BUILD}${PATH}/*initramfs* root@10.10.199.223:/srv/nginx/
/bin/scp ${BUILD}${PATH}/*kernel* root@10.10.199.223:/srv/nginx/
/bin/scp ${BUILD}${PATH}/*rootfs* root@10.10.199.223:/srv/nginx/
