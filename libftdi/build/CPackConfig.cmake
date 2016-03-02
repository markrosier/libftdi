# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


SET(CPACK_BINARY_BUNDLE "")
SET(CPACK_BINARY_CYGWIN "")
SET(CPACK_BINARY_DEB "")
SET(CPACK_BINARY_DRAGNDROP "")
SET(CPACK_BINARY_NSIS "")
SET(CPACK_BINARY_OSXX11 "")
SET(CPACK_BINARY_PACKAGEMAKER "")
SET(CPACK_BINARY_RPM "")
SET(CPACK_BINARY_STGZ "")
SET(CPACK_BINARY_TBZ2 "")
SET(CPACK_BINARY_TGZ "")
SET(CPACK_BINARY_TZ "")
SET(CPACK_BINARY_WIX "")
SET(CPACK_BINARY_ZIP "")
SET(CPACK_CMAKE_GENERATOR "Unix Makefiles")
SET(CPACK_COMPONENTS_ALL "sharedlibs;staticlibs;headers")
SET(CPACK_COMPONENTS_ALL_SET_BY_USER "TRUE")
SET(CPACK_COMPONENT_HEADERS_DESCRIPTION "C/C++ header files.")
SET(CPACK_COMPONENT_HEADERS_DISPLAY_NAME "C++ Headers")
SET(CPACK_COMPONENT_HEADERS_GROUP "Development")
SET(CPACK_COMPONENT_SHAREDLIBS_DESCRIPTION "Shared library for general use.")
SET(CPACK_COMPONENT_SHAREDLIBS_DISPLAY_NAME "Shared libraries")
SET(CPACK_COMPONENT_SHAREDLIBS_GROUP "Development")
SET(CPACK_COMPONENT_STATICLIBS_DESCRIPTION "Static library, good if you want to embed libftdi1 in your application.")
SET(CPACK_COMPONENT_STATICLIBS_DISPLAY_NAME "Static libraries")
SET(CPACK_COMPONENT_STATICLIBS_GROUP "Development")
SET(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
SET(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
SET(CPACK_GENERATOR "DEB;RPM")
SET(CPACK_INSTALL_CMAKE_PROJECTS "/home/mark/testcode/FTDI/libftdi/libftdi/build;libftdi1;ALL;/")
SET(CPACK_INSTALL_PREFIX "/usr")
SET(CPACK_MODULE_PATH "/home/mark/testcode/FTDI/libftdi/libftdi/cmake")
SET(CPACK_NSIS_DISPLAY_NAME "libftdi1 1.2")
SET(CPACK_NSIS_INSTALLER_ICON_CODE "")
SET(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
SET(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
SET(CPACK_NSIS_PACKAGE_NAME "libftdi1 1.2")
SET(CPACK_OUTPUT_CONFIG_FILE "/home/mark/testcode/FTDI/libftdi/libftdi/build/CPackConfig.cmake")
SET(CPACK_PACKAGE_CONTACT "Intra2net AG <libftdi@developer.intra2net.com>")
SET(CPACK_PACKAGE_DEFAULT_LOCATION "/")
SET(CPACK_PACKAGE_DESCRIPTION "libftdi1 library.")
SET(CPACK_PACKAGE_DESCRIPTION_FILE "/usr/share/cmake-2.8/Templates/CPack.GenericDescription.txt")
SET(CPACK_PACKAGE_DESCRIPTION_SUMMARY "libftdi1 library.")
SET(CPACK_PACKAGE_FILE_NAME "libftdi1-1.2.x86_64")
SET(CPACK_PACKAGE_INSTALL_DIRECTORY "libftdi1 1.2")
SET(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "libftdi1 1.2")
SET(CPACK_PACKAGE_NAME "libftdi1")
SET(CPACK_PACKAGE_RELOCATABLE "true")
SET(CPACK_PACKAGE_VENDOR "Humanity")
SET(CPACK_PACKAGE_VERSION "1.2")
SET(CPACK_PACKAGE_VERSION_MAJOR "0")
SET(CPACK_PACKAGE_VERSION_MINOR "1")
SET(CPACK_PACKAGE_VERSION_PATCH "1")
SET(CPACK_RESOURCE_FILE_LICENSE "/home/mark/testcode/FTDI/libftdi/libftdi/LICENSE")
SET(CPACK_RESOURCE_FILE_README "/usr/share/cmake-2.8/Templates/CPack.GenericDescription.txt")
SET(CPACK_RESOURCE_FILE_WELCOME "/usr/share/cmake-2.8/Templates/CPack.GenericWelcome.txt")
SET(CPACK_RPM_PACKAGE_DEPENDS "libusb1")
SET(CPACK_SET_DESTDIR "ON")
SET(CPACK_SOURCE_CYGWIN "")
SET(CPACK_SOURCE_GENERATOR "TGZ")
SET(CPACK_SOURCE_IGNORE_FILES "\\.git;~$;build/")
SET(CPACK_SOURCE_OUTPUT_CONFIG_FILE "/home/mark/testcode/FTDI/libftdi/libftdi/build/CPackSourceConfig.cmake")
SET(CPACK_SOURCE_PACKAGE_FILE_NAME "libftdi1-1.2")
SET(CPACK_SOURCE_TBZ2 "")
SET(CPACK_SOURCE_TGZ "")
SET(CPACK_SOURCE_TZ "")
SET(CPACK_SOURCE_ZIP "")
SET(CPACK_SYSTEM_NAME "Linux")
SET(CPACK_TOPLEVEL_TAG "Linux")
SET(CPACK_WIX_SIZEOF_VOID_P "8")
