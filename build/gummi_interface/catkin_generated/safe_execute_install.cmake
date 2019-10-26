execute_process(COMMAND "/home/altair/ws_gummi_popeye/build/gummi_interface/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/altair/ws_gummi_popeye/build/gummi_interface/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
