set(EXE_NAME RoboCar)
set(SOURCE_FILES src/rc_main/main.cpp)
include_directories(src/include)
add_executable(${EXE_NAME} ${SOURCE_FILES})
if (CMAKE_SYSTEM_NAME MATCHES "linux")
	target_link_libraries(${EXE_NAME} ${OpenCV_LIBS}  rctask rclog rcmove rccv)
elseif (CMAKE_SYSTEM_NAME MATCHES "Windows")
	target_link_libraries(${EXE_NAME} ${OPENCV_LIB} lrctask lrclog lrccv lrcmove)
endif (CMAKE_SYSTEM_NAME MATCHES "linux")