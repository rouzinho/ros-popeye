#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/altair/ws_gummi_popeye/src/gummi_interface"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/altair/ws_gummi_popeye/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/altair/ws_gummi_popeye/install/lib/python2.7/dist-packages:/home/altair/ws_gummi_popeye/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/altair/ws_gummi_popeye/build" \
    "/home/altair/.virtualenvs/gummi/bin/python" \
    "/home/altair/ws_gummi_popeye/src/gummi_interface/setup.py" \
    build --build-base "/home/altair/ws_gummi_popeye/build/gummi_interface" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/altair/ws_gummi_popeye/install" --install-scripts="/home/altair/ws_gummi_popeye/install/bin"
