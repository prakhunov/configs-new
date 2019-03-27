#!/bin/sh

#compton -bcCzG -t-3 -l-5 -r4 \
# --config /dev/null --backend xr_glx_hybrid \
# --vsync opengl-swc --vsync-use-glfinish \
# --glx-no-stencil --paint-on-overlay \
# --glx-swap-method 3 --glx-no-rebind-pixmap \
# --xrender-sync --xrender-sync-fence \
# --unredir-if-possible

#compton -c -r8 -l-12 -t-8  -b  -G  -f -D30 -I0.45 -O0.45  --paint-on-overlay --unredir-if-possible  --backend glx --glx-no-stencil --glx-no-rebind-pixmap --vsync opengl-mswc
#compton -c -r8 -l-12 -t-8  -b  -G  -f -D30 -I0.45 -O0.45  --backend glx --vsync opengl-mswc --sw-opti
#compton -c -r8 -l-12 -t-8  -b  -G  -f -D30 -I0.45 -O0.45  --backend xrender --unredir-if-possible
compton -b --config ~/.screenlayout/compton.conf
#compton -c -r8 -l-12 -t-8  -b  -G  -f -D30 -I0.45 -O0.45  --backend glx --glx-swap-method=buffer-age
#compton -c -r8 -l-12 -t-8  -b  -G  -f -D30 -I0.45 -O0.45 --vsync opengl 
