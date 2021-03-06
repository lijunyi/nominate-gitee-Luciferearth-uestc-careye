if (RC_TEST)
    set(SERIAL_TEST ${PROJECT_SOURCE_DIR}/src/rc_test/rc_serial_test.cpp)
    add_executable(rc_serial_test ${SERIAL_TEST})
    if (RC_LIB STREQUAL "OFF")
        if (CMAKE_SYSTEM_NAME MATCHES "Linux")
            target_link_libraries(rc_serial_test rcserial rclog)
        elseif (CMAKE_SYSTEM_NAME MATCHES "Windows")
            target_link_libraries(rc_serial_test lrcserial lrclog)
        endif ()
    else ()
        target_link_libraries(rc_serial_test ${OpenCV_LIBS} rc pthread)
    endif ()
endif ()

set(CV_TEST ${PROJECT_SOURCE_DIR}/src/rc_test/rc_cv_test.cpp)
add_executable(rc_cv_test ${CV_TEST})
if (RC_LIB STREQUAL "OFF")
    if (CMAKE_SYSTEM_NAME MATCHES "Linux")
        target_link_libraries(rc_cv_test ${OpenCV_LIBS} rccv rclog)
    elseif (CMAKE_SYSTEM_NAME MATCHES "Windows")
        target_link_libraries(rc_cv_test ${OpenCV_LIBS} lrccv lrclog)
    endif ()
else ()
    target_link_libraries(rc_cv_test ${OpenCV_LIBS} rc)
endif ()

link_directories(${PROJECT_SOURCE_DIR}/3rdparty)
set(RADAR_TEST ${PROJECT_SOURCE_DIR}/src/rc_test/rc_radar_test.cpp)
add_executable(rc_radar_test ${RADAR_TEST})
if (RC_LIB STREQUAL "OFF")
    if (CMAKE_SYSTEM_NAME MATCHES "Linux")
        target_link_libraries(rc_radar_test ${OpenCV_LIBS} rcmapping rclog pthread)
    elseif (CMAKE_SYSTEM_NAME MATCHES "Windows")
        target_link_libraries(rc_radar_test ${OpenCV_LIBS} lrccv lrclog)
    endif ()
else ()
    target_link_libraries(rc_radar_test ${OpenCV_LIBS} rc)
endif ()

set(RADAR_MAP_TEST ${PROJECT_SOURCE_DIR}/src/rc_test/rc_radar_map_test.cpp)
add_executable(rc_radar_map_test ${RADAR_MAP_TEST})
if (RC_LIB STREQUAL "OFF")
    if (CMAKE_SYSTEM_NAME MATCHES "Linux")
        target_link_libraries(rc_radar_map_test ${OpenCV_LIBS} ${OPENGL_LIBRARIES} ${GLUT_LIBRARY})
    elseif (CMAKE_SYSTEM_NAME MATCHES "Windows")
        target_link_libraries(rc_radar_map_test ${OpenCV_LIBS} ${OPENGL_LIBRARIES} ${GLUT_LIBRARY})
    endif ()
else ()
    target_link_libraries(rc_radar_map_test ${OpenCV_LIBS} rc)
endif ()

set(RC_IMU_TEST ${PROJECT_SOURCE_DIR}/src/rc_test/rc_imu_ju901_test.cpp)
add_executable(rc_imu_ju901_test ${RC_IMU_TEST})
if (RC_LIB STREQUAL "OFF")
    if (CMAKE_SYSTEM_NAME MATCHES "Linux")
        target_link_libraries(rc_imu_test ${OpenCV_LIBS} ${OPENGL_LIBRARIES} ${GLUT_LIBRARY})
    elseif (CMAKE_SYSTEM_NAME MATCHES "Windows")
        target_link_libraries(rc_imu_ju901_test ${OpenCV_LIBS} ${OPENGL_LIBRARIES} ${GLUT_LIBRARY})
    endif ()
else ()
    target_link_libraries(rc_imu_ju901_test ${OpenCV_LIBS} rc)
endif ()

set(RC_MPI_TEST ${PROJECT_SOURCE_DIR}/src/rc_test/rc_mpi_test.cpp)
add_executable(rc_mpi_test ${RC_MPI_TEST})
if (RC_LIB STREQUAL "OFF")
    if (CMAKE_SYSTEM_NAME MATCHES "Linux")
        target_link_libraries(rc_mpi_test ${OpenCV_LIBS} ${OPENGL_LIBRARIES} ${GLUT_LIBRARY} ${MPI_CXX_LIBRARIES})
    elseif (CMAKE_SYSTEM_NAME MATCHES "Windows")
        target_link_libraries(rc_mpi_test ${OpenCV_LIBS} ${OPENGL_LIBRARIES} ${GLUT_LIBRARY} ${MPI_CXX_LIBRARIES})
    endif ()
else ()
    target_link_libraries(rc_mpi_test ${OpenCV_LIBS} ${MPI_CXX_LIBRARIES})
endif ()

set(RC_CV_MPI_TEST ${PROJECT_SOURCE_DIR}/src/rc_test/rc_cv_mpi_test.cpp)
add_executable(rc_cv_mpi_test ${RC_CV_MPI_TEST})
if (RC_LIB STREQUAL "OFF")
    if (CMAKE_SYSTEM_NAME MATCHES "Linux")
        target_link_libraries(rc_cv_mpi_test ${OpenCV_LIBS} ${OPENGL_LIBRARIES} ${GLUT_LIBRARY} ${MPI_CXX_LIBRARIES})
    elseif (CMAKE_SYSTEM_NAME MATCHES "Windows")
        target_link_libraries(rc_cv_mpi_test ${OpenCV_LIBS} ${OPENGL_LIBRARIES} ${GLUT_LIBRARY} ${MPI_CXX_LIBRARIES})
    endif ()
else ()
    target_link_libraries(rc_cv_mpi_test ${OpenCV_LIBS} ${MPI_CXX_LIBRARIES})
endif ()
