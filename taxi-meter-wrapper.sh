#!/bin/sh
export XDG_RUNTIME_DIR=/run/user/root
export QT_QPA_PLATFORM=wayland
export QT_QPA_EVDEV_TOUCHSCREEN_PARAMETERS=/dev/input/event1
export QT_QPA_GENERIC_PLUGINS=evdevmouse:/dev/input/event1
export QT_QPA_FONTDIR=/usr/lib/fonts
export QML2_IMPORT_PATH=/usr/lib/qml
export QMLSCENE_DEVICE=software

# Execute the actual application
exec /usr/bin/taxi-meter "$@"
