set(src
  go.c)

add_library(flb-plugin-proxy-go STATIC ${src})
if(FLB_JEMALLOC AND NOT FLB_SYSTEM_JEMALLOC)
  target_link_libraries(flb-plugin-proxy-go libjemalloc)
endif()
