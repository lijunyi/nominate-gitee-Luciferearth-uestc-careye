
set(RC_MOVE_FILES ${PROJECT_SOURCE_DIR}/src/rc_move/rcmove.cpp)

if (RC_LIB STREQUAL "OFF")
    set(LIB_NAME rcmove)
    add_library(${LIB_NAME} SHARED ${RC_MOVE_FILES})
    if (CMAKE_SYSTEM_NAME MATCHES "Linux")
        target_link_libraries(${LIB_NAME} ${OpenCV_LIBS} rccv rcserial rclog)
    elseif (CMAKE_SYSTEM_NAME MATCHES "Windows")
        set(SLIB_NAME lrcmove)
        target_link_libraries(${LIB_NAME} ${OPENCV_LIB} lrccv lrcserial lrclog)
        add_library(${SLIB_NAME} ${RC_MOVE_FILES})
    endif ()
endif ()
