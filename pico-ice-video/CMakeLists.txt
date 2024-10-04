cmake_minimum_required(VERSION 3.13...3.27)

include(pico_sdk_import.cmake)

project(pico-ice-video C CXX ASM)
pico_sdk_init()

add_subdirectory(pico-ice-sdk)

add_executable(pico-ice-video main.cpp usb_descriptors.c)

pico_generate_pio_header(pico-ice-video ${CMAKE_CURRENT_LIST_DIR}/fpga.pio)

target_link_libraries(pico-ice-video pico_ice_sdk pico_ice_usb pico_stdio_usb pico_bootsel_via_double_reset)
target_include_directories(pico-ice-video PUBLIC ${CMAKE_CURRENT_LIST_DIR} ${CMAKE_BINARY_DIR})

pico_add_extra_outputs(pico-ice-video)
pico_enable_stdio_usb(pico-ice-video 1)
pico_enable_stdio_uart(pico-ice-video 0)