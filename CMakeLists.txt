cmake_minimum_required(VERSION 3.22.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_INSTALL_MESSAGE LAZY)
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -DJSON_DIAGNOSTICS=1")


project(zoltan LANGUAGES CXX C)

find_package(metis CONFIG REQUIRED)
find_package(parmetis CONFIG REQUIRED)
find_package(MPI REQUIRED)



#
# src
#

SET(HEADERS "")
SET(NOINSTALLHEADERS "")
SET(SOURCES "")
SET(MODULES "")






SET(HEADERS ${HEADERS}
  ${CMAKE_CURRENT_BINARY_DIR}/${PACKAGE_NAME}_config.h
  )

list(APPEND HEADERS
        include/lbi_const.h
        include/zoltan_align.h
        include/zoltan_cpp.h
        include/zoltan.h
        include/zoltan_types.h
        include/zoltan_comm.h
        include/zoltan_comm_cpp.h
        include/zoltan_timer_cpp.h
        include/zoltan_timer.h
        include/zoltan_dd.h
        Utilities/DDirectory/zoltan_dd_const.h
        include/zoltan_dd_cpp.h
        include/zoltan_partition_tree.h
        include/zoltan_mem.h
        include/zoltan_eval.h
)
#
# src/include
#




#
# src/all
#
file(GLOB_RECURSE ALL_HEADERS
        "${PROJECT_SOURCE_DIR}/all/*.h"
)

file(GLOB_RECURSE ALL_SOURCES
        "${PROJECT_SOURCE_DIR}/all/*.c"
)

list(APPEND NOINSTALLHEADERS ${ALL_HEADERS})

list(APPEND SOURCES ${ALL_SOURCES})


#APPEND_SET(SOURCES
#  all/all_allo.c
#  )

#
# src/coloring
#


file(GLOB_RECURSE COLOR_HEADERS
        "${PROJECT_SOURCE_DIR}/coloring/*.h"
)

file(GLOB_RECURSE COLOR_SOURCES
        "${PROJECT_SOURCE_DIR}/coloring/*.c"
)

list(APPEND NOINSTALLHEADERS ${COLOR_HEADERS})

list(APPEND SOURCES ${COLOR_SOURCES})


#APPEND_SET(NOINSTALLHEADERS
#  coloring/coloring_const.h
#  coloring/coloring.h
#  coloring/g2l_hash.h
#  coloring/bucket.h
#  )
#
#APPEND_SET(SOURCES
#  coloring/coloring.c
#  coloring/color_test.c
#  coloring/g2l_hash.c
#  coloring/bucket.c
#  )

#
# src/graph
#

file(GLOB_RECURSE GRAPH_HEADERS
        "${PROJECT_SOURCE_DIR}/graph/*.h"
)

file(GLOB_RECURSE GRAPH_SOURCES
        "${PROJECT_SOURCE_DIR}/graph/*.c"
)

list(APPEND NOINSTALLHEADERS ${GRAPH_HEADERS})

list(APPEND SOURCES ${GRAPH_SOURCES})


#APPEND_SET(NOINSTALLHEADERS
#  graph/graph.h
#  graph/graph_const.h
#  )
#
#APPEND_SET(SOURCES
#  graph/graph.c
#  )


#
# src/ha
#

file(GLOB_RECURSE HA_HEADERS
        "${PROJECT_SOURCE_DIR}/ha/*.h"
)

file(GLOB_RECURSE HA_SOURCES
        "${PROJECT_SOURCE_DIR}/ha/*.c"
)

list(APPEND NOINSTALLHEADERS ${HA_HEADERS})

list(APPEND SOURCES ${HA_SOURCES})

#APPEND_SET(NOINSTALLHEADERS
#  ha/ha_const.h
#  ha/ha_ovis.h
#  )
#
#APPEND_SET(SOURCES
#  ha/divide_machine.c
#  ha/get_processor_name.c
#  ha/ha_ovis.c
#  )

#
# src/hier
#



file(GLOB_RECURSE HIER_HEADERS
        "${PROJECT_SOURCE_DIR}/hier/*.h"
)

file(GLOB_RECURSE HIER_SOURCES
        "${PROJECT_SOURCE_DIR}/hier/*.c"
)

list(APPEND NOINSTALLHEADERS ${HIER_HEADERS})

list(APPEND SOURCES ${HIER_SOURCES})




#
#
#APPEND_SET(NOINSTALLHEADERS
#  hier/hier.h
#  )
#
#APPEND_SET(SOURCES
#  hier/hier.c
#  hier/hier_free_struct.c
#  )

#
# src/hsfc
#

file(GLOB_RECURSE HSFC_HEADERS
        "${PROJECT_SOURCE_DIR}/hsfc/*.h"
)

file(GLOB_RECURSE HSFC_SOURCES
        "${PROJECT_SOURCE_DIR}/hsfc/*.c"
)

list(APPEND NOINSTALLHEADERS ${HSFC_HEADERS})

list(APPEND SOURCES ${HSFC_SOURCES})

#
#APPEND_SET(NOINSTALLHEADERS
#  hsfc/hsfc.h
#  hsfc/hsfc_const.h
#  hsfc/hsfc_hilbert_const.h
#  )
#
#APPEND_SET(SOURCES
#  hsfc/hsfc_box_assign.c
#  hsfc/hsfc.c
#  hsfc/hsfc_hilbert.c
#  hsfc/hsfc_point_assign.c
#  )

#
# src/lb
#


file(GLOB_RECURSE LB_HEADERS
        "${PROJECT_SOURCE_DIR}/lb/*.h"
)

file(GLOB_RECURSE LB_SOURCES
        "${PROJECT_SOURCE_DIR}/lb/*.c"
)

list(APPEND NOINSTALLHEADERS ${LB_HEADERS})

list(APPEND SOURCES ${LB_SOURCES})

#APPEND_SET(NOINSTALLHEADERS
#  lb/lb_const.h
#  lb/lb_init_const.h
#  )

#APPEND_SET(SOURCES
#  lb/lb_balance.c
#  lb/lb_box_assign.c
#  lb/lb_copy.c
#  lb/lb_eval.c
#  lb/lb_free.c
#  lb/lb_init.c
#  lb/lb_invert.c
#  lb/lb_migrate.c
#  lb/lb_part2proc.c
#  lb/lb_point_assign.c
#  lb/lb_remap.c
#  lb/lb_set_fn.c
#  lb/lb_set_method.c
#  lb/lb_set_part_sizes.c
#  )

#
# src/matrix
#

file(GLOB_RECURSE MAT_HEADERS
        "${PROJECT_SOURCE_DIR}/matrix/*.h"
)

file(GLOB_RECURSE MAT_SOURCES
        "${PROJECT_SOURCE_DIR}/matrix/*.c"
)

list(APPEND NOINSTALLHEADERS ${MAT_HEADERS})

list(APPEND SOURCES ${MAT_SOURCES})


#
#APPEND_SET(NOINSTALLHEADERS
#  matrix/zoltan_matrix.h
#  )
#
#APPEND_SET(SOURCES
#  matrix/matrix_build.c
#  matrix/matrix_distribute.c
#  matrix/matrix_operations.c
#  matrix/matrix_sym.c
#  matrix/matrix_utils.c
#  )

#
# src/order
#

file(GLOB_RECURSE OD_HEADERS
        "${PROJECT_SOURCE_DIR}/order/*.h"
)

file(GLOB_RECURSE OD_SOURCES
        "${PROJECT_SOURCE_DIR}/order/*.c"
)

list(APPEND NOINSTALLHEADERS ${OD_HEADERS})

list(APPEND SOURCES ${OD_SOURCES})

#
#APPEND_SET(NOINSTALLHEADERS
#  order/order_const.h
#  )
#
#APPEND_SET(SOURCES
#  order/hsfcOrder.c
#  order/order.c
#  order/order_struct.c
#  order/order_tools.c
#  order/perm.c
#  )

#IF (${PACKAGE_NAME}_ENABLE_HUND)
#  APPEND_SET(SOURCES
#    order/hund.c
#    )
#ENDIF()
#
# src/par
#

file(GLOB_RECURSE PAR_HEADERS
        "${PROJECT_SOURCE_DIR}/par/*.h"
)

file(GLOB_RECURSE PAR_SOURCES
        "${PROJECT_SOURCE_DIR}/par/*.c"
)

list(APPEND NOINSTALLHEADERS ${PAR_HEADERS})

list(APPEND SOURCES ${PAR_SOURCES})


#APPEND_SET(NOINSTALLHEADERS
#  par/par_average_const.h
#  par/par_bisect_const.h
#  par/par_const.h
#  par/par_median_const.h
#  par/par_tflops_special_const.h
#  )
#
#APPEND_SET(SOURCES
#  par/par_average.c
#  par/par_bisect.c
#  par/par_median.c
#  par/par_median_randomized.c
#  par/par_stats.c
#  par/par_sync.c
#  par/par_tflops_special.c
#  )

#
# src/params
#

file(GLOB_RECURSE PARM_HEADERS
        "${PROJECT_SOURCE_DIR}/params/*.h"
)

file(GLOB_RECURSE PARM_SOURCES
        "${PROJECT_SOURCE_DIR}/params/*.c"
)

list(APPEND NOINSTALLHEADERS ${PARM_HEADERS})

list(APPEND SOURCES ${PARM_SOURCES})

#APPEND_SET(NOINSTALLHEADERS
#  params/key_params.h
#  params/params_const.h
#  )
#
#APPEND_SET(SOURCES
#  params/assign_param_vals.c
#  params/bind_param.c
#  params/check_param.c
#  params/free_params.c
#  params/key_params.c
#  params/print_params.c
#  params/set_param.c
#  )



#
# src/tpls
#

file(GLOB_RECURSE TPLS_HEADERS
        "${PROJECT_SOURCE_DIR}/tpls/*.h"
)

file(GLOB_RECURSE TPLS_SOURCES
        "${PROJECT_SOURCE_DIR}/tpls/*.c"
)

list(APPEND NOINSTALLHEADERS ${TPLS_HEADERS})

list(APPEND SOURCES ${TPLS_SOURCES})



#APPEND_SET(NOINSTALLHEADERS
#  tpls/third_library_const.h
#  tpls/third_library.h
#  tpls/third_library_tools.h
#  tpls/graph_util.h
#  )
#
#APPEND_SET(SOURCES
#  tpls/build_graph.c
#  tpls/postprocessing.c
#  tpls/preprocessing.c
#  tpls/scatter_graph.c
#  tpls/third_library.c
#  tpls/verify_graph.c
#  )






#
# src/phg
#

file(GLOB_RECURSE PHG_HEADERS
        "${PROJECT_SOURCE_DIR}/phg/*.h"
)

file(GLOB_RECURSE PHG_SOURCES
        "${PROJECT_SOURCE_DIR}/phg/*.c"
)

list(APPEND NOINSTALLHEADERS ${PHG_HEADERS})

list(APPEND SOURCES ${PHG_SOURCES})

#APPEND_SET(NOINSTALLHEADERS
#  phg/phg_comm.h
#  phg/phg_const.h
#  phg/phg_distrib.h
#  phg/phg.h
#  phg/phg_lookup.h
#  phg/phg_verbose.h
#  phg/phg_hypergraph.h
#  phg/phg_tree.h
#  phg/phg_util.h
#  )
#
#APPEND_SET(SOURCES
#  phg/phg_build.c
#  phg/phg_build_calls.c
#  phg/phg.c
#  phg/phg_lookup.c
#  phg/phg_verbose.c
#  phg/phg_coarse.c
#  phg/phg_comm.c
#  phg/phg_distrib.c
#  phg/phg_gather.c
#  phg/phg_hypergraph.c
#  phg/phg_match.c
#  phg/phg_order.c
#  phg/phg_parkway.c
#  phg/phg_patoh.c
#  phg/phg_plot.c
#  phg/phg_rdivide.c
#  phg/phg_refinement.c
#  phg/phg_scale.c
#  phg/phg_serialpartition.c
#  phg/phg_tree.c
#  phg/phg_partition_tree.c
#  phg/phg_two_ways.c
#  phg/phg_util.c
#  phg/phg_Vcycle.c
#  )

#
# src/rcb
#
file(GLOB_RECURSE RCB_HEADERS
        "${PROJECT_SOURCE_DIR}/rcb/*.h"
)

file(GLOB_RECURSE RCB_SOURCES
        "${PROJECT_SOURCE_DIR}/rcb/*.c"
)

list(APPEND NOINSTALLHEADERS ${RCB_HEADERS})

list(APPEND SOURCES ${RCB_SOURCES})

#
#APPEND_SET(NOINSTALLHEADERS
#  rcb/create_proc_list_const.h
#  rcb/rcb_const.h
#  rcb/rcb.h
#  rcb/rib_const.h
#  rcb/rib.h
#  rcb/shared.h
#  )
#
#APPEND_SET(SOURCES
#  rcb/box_assign.c
#  rcb/create_proc_list.c
#  rcb/inertial1d.c
#  rcb/inertial2d.c
#  rcb/inertial3d.c
#  rcb/point_assign.c
#  rcb/rcb_box.c
#  rcb/rcb_partition_tree.c
#  rcb/rcb.c
#  rcb/rcb_util.c
#  rcb/rib.c
#  rcb/rib_util.c
#  rcb/shared.c
#  )

#
# src/reftree
#
file(GLOB_RECURSE RT_HEADERS
        "${PROJECT_SOURCE_DIR}/reftree/*.h"
)

file(GLOB_RECURSE RT_SOURCES
        "${PROJECT_SOURCE_DIR}/reftree/*.c"
)

list(APPEND NOINSTALLHEADERS ${RT_HEADERS})

list(APPEND SOURCES ${RT_SOURCES})


#APPEND_SET(NOINSTALLHEADERS
#  reftree/reftree_const.h
#  reftree/reftree.h
#  )
#
#APPEND_SET(SOURCES
#  reftree/reftree_build.c
#  reftree/reftree_coarse_path.c
#  reftree/reftree_hash.c
#  reftree/reftree_part.c
#  )

#
# src/simple
#
file(GLOB_RECURSE SIMPLE_HEADERS
        "${PROJECT_SOURCE_DIR}/simple/*.h"
)

file(GLOB_RECURSE SIMPLE_SOURCES
        "${PROJECT_SOURCE_DIR}/simple/*.c"
)

list(APPEND NOINSTALLHEADERS ${SIMPLE_HEADERS})

list(APPEND SOURCES ${SIMPLE_SOURCES})


#APPEND_SET(SOURCES
#  simple/block.c
#  simple/cyclic.c
#  simple/random.c
#  )
#
#APPEND_SET(NOINSTALLHEADERS
#  simple/simple_const.h
#  )

#
# src/timer
#

file(GLOB_RECURSE TIMER_HEADERS
        "${PROJECT_SOURCE_DIR}/timer/*.h"
)

file(GLOB_RECURSE TIMER_SOURCES
        "${PROJECT_SOURCE_DIR}/timer/*.c"
)

list(APPEND NOINSTALLHEADERS ${TIMER_HEADERS})

list(APPEND SOURCES ${TIMER_SOURCES})

#APPEND_SET(NOINSTALLHEADERS
#  timer/timer_const.h
#  )
#
#APPEND_SET(SOURCES
#  timer/timer_params.c
#  )

#
# src/Utilities
#

file(GLOB_RECURSE UT_HEADERS
        "${PROJECT_SOURCE_DIR}/Utilities/*.h"
)

file(GLOB_RECURSE UT_SOURCES
        "${PROJECT_SOURCE_DIR}/Utilities/*.c"
)

list(APPEND NOINSTALLHEADERS ${UT_HEADERS})

list(APPEND SOURCES ${UT_SOURCES})

#APPEND_SET(NOINSTALLHEADERS
#  Utilities/Communication/comm.h
#  Utilities/DDirectory/DD_Memory.h
#  Utilities/Timer/timer.h
#  Utilities/shared/zoltan_util.h
#  Utilities/shared/zoltan_id.h
#  )

#APPEND_SET(SOURCES
#  Utilities/Communication/comm_exchange_sizes.c
#  Utilities/Communication/comm_invert_map.c
#  Utilities/Communication/comm_do.c
#  Utilities/Communication/comm_do_reverse.c
#  Utilities/Communication/comm_info.c
#  Utilities/Communication/comm_create.c
#  Utilities/Communication/comm_default.c
#  Utilities/Communication/comm_resize.c
#  Utilities/Communication/comm_sort_ints.c
#  Utilities/Communication/comm_destroy.c
#  Utilities/Communication/comm_invert_plan.c
#  Utilities/Timer/zoltan_timer.c
#  Utilities/Timer/timer.c
#  Utilities/DDirectory/DD_Find.c
#  Utilities/DDirectory/DD_Destroy.c
#  Utilities/DDirectory/DD_Set_Neighbor_Hash_Fn3.c
#  Utilities/DDirectory/DD_Remove.c
#  Utilities/DDirectory/DD_Create.c
#  Utilities/DDirectory/DD_Update.c
#  Utilities/DDirectory/DD_Stats.c
#  Utilities/DDirectory/DD_Hash2.c
#  Utilities/DDirectory/DD_Memory.c
#  Utilities/DDirectory/DD_Print.c
#  Utilities/DDirectory/DD_Set_Neighbor_Hash_Fn2.c
#  Utilities/DDirectory/DD_Set_Hash_Fn.c
#  Utilities/DDirectory/DD_Set_Neighbor_Hash_Fn1.c
#  Utilities/Memory/mem.c
#  Utilities/shared/zoltan_align.c
#  Utilities/shared/zoltan_id.c
#  )

#
# src/zz
#
file(GLOB_RECURSE ZZ_HEADERS
        "${PROJECT_SOURCE_DIR}/zz/*.h"
)

file(GLOB_RECURSE ZZ_SOURCES
        "${PROJECT_SOURCE_DIR}/zz/*.c"
)

list(APPEND NOINSTALLHEADERS ${ZZ_HEADERS})

list(APPEND SOURCES ${ZZ_SOURCES})

#APPEND_SET(NOINSTALLHEADERS
#  zz/zz_const.h
#  zz/zz_hash.h
#  zz/zz_heap.h
#  zz/zz_id_const.h
#  zz/zz_rand.h
#  zz/zz_sort.h
#  zz/zz_util_const.h
#  )
#
#APPEND_SET(SOURCES
#  zz/zz_coord.c
#  zz/zz_gen_files.c
#  zz/zz_hash.c
#  zz/zz_map.c
#  zz/zz_heap.c
#  zz/zz_init.c
#  zz/zz_obj_list.c
#  zz/zz_rand.c
#  zz/zz_set_fn.c
#  zz/zz_sort.c
#  zz/zz_struct.c
#  zz/zz_back_trace.c
#  zz/zz_util.c
#  )


#
# C) Define the targets for package's library(s)
#

set(ZOLTAN_HEADERS
        ${PROJECT_SOURCE_DIR}/include
        ${PROJECT_SOURCE_DIR}/all
        ${PROJECT_SOURCE_DIR}/coloring
        ${PROJECT_SOURCE_DIR}/graph
        ${PROJECT_SOURCE_DIR}/ha
        ${PROJECT_SOURCE_DIR}/hier
        ${PROJECT_SOURCE_DIR}/hsfc
        ${PROJECT_SOURCE_DIR}/lb
        ${PROJECT_SOURCE_DIR}/matrix
        ${PROJECT_SOURCE_DIR}/order
        ${PROJECT_SOURCE_DIR}/par
        ${PROJECT_SOURCE_DIR}/params
        ${PROJECT_SOURCE_DIR}/tpls
        ${PROJECT_SOURCE_DIR}/phg
        ${PROJECT_SOURCE_DIR}/rcb
        ${PROJECT_SOURCE_DIR}/reftree
        ${PROJECT_SOURCE_DIR}/simple
        ${PROJECT_SOURCE_DIR}/timer
        ${PROJECT_SOURCE_DIR}/Utilities/Communication
        ${PROJECT_SOURCE_DIR}/Utilities/DDirectory
        ${PROJECT_SOURCE_DIR}/Utilities/Timer
        ${PROJECT_SOURCE_DIR}/Utilities/shared
        ${PROJECT_SOURCE_DIR}/zz
        ${PROJECT_SOURCE_DIR}/win_interface/include
)
file(GLOB_RECURSE EXPORT_HEADERS
        "${PROJECT_SOURCE_DIR}/include/*.h"
)

add_library(${PROJECT_NAME} STATIC ${SOURCES})

if(WIN32)
    find_package(PThreads4W REQUIRED)
    target_link_libraries(${PROJECT_NAME}
            MPI::MPI_CXX
            MPI::MPI_C
            metis
            PThreads4W::PThreads4W
            parmetis
    )

elseif (UNIX)

  target_link_libraries(${PROJECT_NAME}
          MPI::MPI_CXX
          MPI::MPI_C
          metis
          parmetis
  )



endif ()





target_include_directories(${PROJECT_NAME} PRIVATE ${ZOLTAN_HEADERS})


install(FILES ${EXPORT_HEADERS}
        DESTINATION ${CMAKE_INSTALL_PREFIX}/include)


install(TARGETS ${PROJECT_NAME}
        EXPORT ${PROJECT_NAME}
        INCLUDES DESTINATION "include"
)

#install(
#        FILE "${PROJECT_NAME}.cmake"
#        NAMESPACE ${PROJECT_NAME}::
#        DESTINATION lib/cmake/)

install(EXPORT ${PROJECT_NAME}
        FILE "${PROJECT_NAME}Config.cmake"
        DESTINATION "lib/cmake/")

install(EXPORT "${PROJECT_NAME}"
        FILE "${PROJECT_NAME}.cmake"
        NAMESPACE ${PROJECT_NAME}::
        DESTINATION lib/cmake/)

#install(FILES ${EXPORT_HEADERS}
#        DESTINATION include
#)
#
#install(TARGETS ${PROJECT_NAME}
#        EXPORT ${PROJECT_NAME}
#        INCLUDES DESTINATION "include"
#)
#install(EXPORT ${PROJECT_NAME}  FILE "zoltanConfig.cmake" DESTINATION "share/zoltan")

