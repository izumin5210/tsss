if(NOT TARGET TSSS)
  get_filename_component(TSSS_DIR "${CMAKE_CURRENT_LIST_DIR}/../.." ABSOLUTE)
  get_filename_component(TSSS_INCLUDE_PATH "${TSSS_DIR}/include" ABSOLUTE)
  get_filename_component(NOD_INCLUDE_PATH "${TSSS_DIR}/lib/nod/include" ABSOLUTE)
  get_filename_component(SINGLETONT_INCLUDE_PATH "${TSSS_DIR}/lib/singleton_t/include" ABSOLUTE)

  message( "OSC_MODULE_PATH: ${OSC_MODULE_PATH}" )

  target_compile_options(TSSS PUBLIC "-std=c++11")

  target_include_directories(TSSS PUBLIC
    "${NOD_INCLUDE_PATH}"
    "${SINGLETONT_INCLUDE_PATH}"
    "${TSSS_INCLUDE_PATH}"
    )
endif()
