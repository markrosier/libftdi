option(EXAMPLES "Build example programs" ON)

if (EXAMPLES)
    # Includes
    include_directories( ${CMAKE_CURRENT_SOURCE_DIR}
            ${CMAKE_CURRENT_BINARY_DIR}
            )

    message(STATUS "Building example programs.")

    # Targets
    add_executable(simple simple.c)
    add_executable(FTDI-high FTDI-high.c)
    add_executable(FTDI-low FTDI-low.c)
    add_executable(FTDI-high1 FTDI-high1.c)
    add_executable(FTDI-low1 FTDI-low1.c)
    add_executable(FTDI-high2 FTDI-high2.c)
    add_executable(FTDI-low2 FTDI-low2.c)
    add_executable(FTDI-high3 FTDI-high3.c)
    add_executable(FTDI-low3 FTDI-low3.c)
    add_executable(FTDI-high4 FTDI-high4.c)
    add_executable(FTDI-low4 FTDI-low4.c)
    add_executable(bitbang bitbang.c)
    add_executable(bitbang2 bitbang2.c)
    add_executable(bitbang_cbus bitbang_cbus.c)
    add_executable(bitbang_ft2232 bitbang_ft2232.c)
    add_executable(find_all find_all.c)
    add_executable(serial_test serial_test.c)
    add_executable(baud_test baud_test.c)
    add_executable(stream_test stream_test.c)
    add_executable(eeprom eeprom.c)

    # Linkage
    target_link_libraries(simple ftdi1)
    target_link_libraries(FTDI-high ftdi1)
    target_link_libraries(FTDI-low ftdi1)
    target_link_libraries(FTDI-high1 ftdi1)
    target_link_libraries(FTDI-low1 ftdi1)
    target_link_libraries(FTDI-high2 ftdi1)
    target_link_libraries(FTDI-low2 ftdi1)
    target_link_libraries(FTDI-high3 ftdi1)
    target_link_libraries(FTDI-low3 ftdi1)
    target_link_libraries(FTDI-high4 ftdi1)
    target_link_libraries(FTDI-low4 ftdi1)
    target_link_libraries(bitbang ftdi1)
    target_link_libraries(bitbang2 ftdi1)
    target_link_libraries(bitbang_cbus ftdi1)
    target_link_libraries(bitbang_ft2232 ftdi1)
    target_link_libraries(find_all ftdi1)
    target_link_libraries(serial_test ftdi1)
    target_link_libraries(baud_test ftdi1)
    target_link_libraries(stream_test ftdi1)
    target_link_libraries(eeprom ftdi1)

    # libftdi++ examples
    if(FTDI_BUILD_CPP)
        if(Boost_FOUND)
            message(STATUS "Building libftdi++ examples.")
            include_directories(BEFORE ${CMAKE_SOURCE_DIR}/ftdipp
                                ${Boost_INCLUDE_DIRS})

            # Target
            add_executable(find_all_pp find_all_pp.cpp)

            # Linkage
            target_link_libraries(find_all_pp ftdipp1)
        endif(Boost_FOUND)
    endif(FTDI_BUILD_CPP)

    # Source includes
    include_directories(BEFORE ${CMAKE_SOURCE_DIR}/src)

else(EXAMPLES)
    message(STATUS "Not building example programs.")
endif(EXAMPLES)
