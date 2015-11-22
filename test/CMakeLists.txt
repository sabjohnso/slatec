########################################################################s
#
# File: slatec/test/CMakeLists.txt
#
# Purpose: This file defines the compilation of tests for the SLATEC
#          library
#
# Author: Samuel B. Johnson <sabjohnso@yahoo.com>
#
# Revision History: Feb. 8, 2015 - Created
#



set( CMAKE_BUILD_WITH_INSTALL_RPATH TRUE )


#
# ... A macro to add a test for SLATEC
#
macro( add_slatec_test )

  set( ARGLIST ${ARGN})
  list( GET ARGLIST 0 NAME )
  
  set( FILES ${ARGLIST} ) 
  list( REMOVE_AT FILES 0 )
  
  set( DRIVER ${NAME}_driver )
  
  add_executable( ${DRIVER} ${FILES} )
  
  target_link_libraries( ${DRIVER} slatec_static lapack pthread )
  
  if( USE_OPTIMIZED_BLAS )
    target_link_libraries( ${DRIVER} blas )
  endif()
  
  # set_target_properties( ${DRIVER} PROPERTIES LINK_FLAGS "-static" )
  
  add_test(
    NAME ${NAME}
    COMMAND echo 1 | ./${DRIVER} | grep PASSED
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR} )

  if( BUILD_SHARED_LIBRARY )
    SET( SHARED_DRIVER ${DRIVER}_shared )
    add_executable( ${SHARED_DRIVER} ${FILES})
    target_link_libraries( ${SHARED_DRIVER} slatec_shared lapack pthread )
    
    if( USE_OPTIMIZED_BLAS )
      target_link_libraries( ${SHARED_DRIVER} blas )
    endif()

    add_test(
      NAME ${NAME}_shared
      COMMAND echo 1 | ./${DRIVER} | grep PASSED
      WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR} )
    
  endif()
  
endmacro()

macro( add_slatec_test_static_only )

  set( ARGLIST ${ARGN})
  list( GET ARGLIST 0 NAME )
  
  set( FILES ${ARGLIST} ) 
  list( REMOVE_AT FILES 0 )
  
  set( DRIVER ${NAME}_driver )
  
  add_executable( ${DRIVER} ${FILES} )
  
  target_link_libraries( ${DRIVER} slatec_static lapack pthread )

  if( USE_OPTIMIZED_BLAS )
    target_link_libraries( ${DRIVER} blas )
  endif()

  # set_target_properties( ${DRIVER} PROPERTIES LINK_FLAGS "-static" )
  
  add_test(
    NAME ${NAME}
    COMMAND echo 1 | ./${DRIVER} | grep PASSED
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR} )
  
endmacro()




set( TEST01_FILES test01.f  qc6a.f )
add_slatec_test(  test01 ${TEST01_FILES} )

set( TEST02_FILES test02.f  sfnck.f )
add_slatec_test( test02 ${TEST02_FILES} )

set( TEST03_FILES test03.f dfnck.f  )
add_slatec_test(  test03 ${TEST03_FILES} )

set( TEST04_FILES test04.f cfnck.f  )
add_slatec_test( test04 ${TEST04_FILES} )

set( TEST05_FILES test05.f bikck.f bjyck.f eg8ck.f fein.f )
add_slatec_test( test05 ${TEST05_FILES} )

set( TEST06_FILES test06.f dbikck.f dbjyck.f deg8ck.f dfein.f )
add_slatec_test( test06 ${TEST06_FILES} )

set( TEST07_FILES test07.f  qckin.f qcpsi.f )
add_slatec_test( test07 ${TEST07_FILES} )

set( TEST08_FILES test08.f dqckin.f dqcpsi.f  )
add_slatec_test( test08 ${TEST08_FILES} )

set( TEST09_FILES test09.f cqcai.f cqcbh.f cqcbi.f cqcbj.f cqcbk.f cqcby.f  )
add_slatec_test( test09 ${TEST09_FILES} )

set( TEST10_FILES test10.f  zqcai.f zqcbh.f zqcbi.f zqcbj.f zqcbk.f zqcby.f )
add_slatec_test( test10 ${TEST10_FILES} )

set( TEST11_FILES test11.f fcnqx1.f xcsrt.f )
add_slatec_test( test11 ${TEST11_FILES} )

set( TEST12_FILES test12.f fcnqx2.f dxcsrt.f )
add_slatec_test( test12 ${TEST12_FILES} )

set( TEST13_FILES test13.f  qcrc.f qcrd.f qcrf.f qcrj.f )
add_slatec_test( test13 ${TEST13_FILES} )

set( TEST14_FILES test14.f  qcdrc.f qcdrd.f qcdrf.f qcdrj.f )
add_slatec_test( test14 ${TEST14_FILES} )

set( TEST15_FILES test15.f  qc36j.f )
add_slatec_test( test15 ${TEST15_FILES} )

set( TEST16_FILES test16.f dqc36j.f  )
add_slatec_test( test16 ${TEST16_FILES} )

set( TEST17_FILES test17.f blachk.f header.f check0.f check1.f check2.f stest.f dtest.f itest.f )
add_slatec_test( test17 ${TEST17_FILES} )

set( TEST18_FILES test18.f  sblat2.f sblat3.f smvch.f lse.f 
  schke2.f schk12.f schk42.f schk22.f schk62.f schk32.f schk52.f smmch.f 
  schke3.f schk13.f schk43.f schk33.f schk23.f schk53.f
  chkxer.f smake2.f lseres.f smake3.f schk43.f sbeg.f )
add_slatec_test( test18 ${TEST18_FILES} )

set( TEST19_FILES test19.f  dblat2.f dblat3.f
  dmvch.f lde.f dchke2.f dchk12.f dchk42.f dchk22.f dchk62.f dchk32.f dchk52.f
  dblat3.f dmmch.f dchke3.f dchk13.f dchk43.f dchk33.f dchk23.f dchk53.f 
  chkxer.f dmake2.f lderes.f dchk42.f dchk52.f dchk13.f dmake3.f dchk33.f
  dbeg.f )
add_slatec_test( test19 ${TEST19_FILES} )



set( TEST20_FILES test20.f  cblat2.f cblat3.f
  cmvch.f lce.f cchke2.f cchk12.f cchk42.f cchk22.f cchk62.f cchk32.f cchk52.f
  cmmch.f cchke3.f cchk13.f cchk33.f cchk53.f cchk23.f cchk43.f
  chkxer.f cmake2.f lceres.f cmake3.f cbeg.f )
add_slatec_test( test20 ${TEST20_FILES} )




set( TEST21_FILES test21.f cgeqc.f dgeqc.f  sgeqc.f )
add_slatec_test( test21 ${TEST21_FILES} )

set( TEST22_FILES test22.f cqck.f dqck.f  sqck.f )
add_slatec_test( test22 ${TEST22_FILES} )

set( TEST23_FILES test23.f cchqc.f cgbqc.f cgeck.f cgtqc.f chiqc.f chpqc.f cpbqc.f
  cpoqc.f cppqc.f csiqc.f cspqc.f ctrqc.f cptqc.f cqrqc.f csvqc.f )
add_slatec_test( test23 ${TEST23_FILES} )

set( TEST24_FILES test24.f eisqx1.f eisqx2.f  )
add_slatec_test( test24 ${TEST24_FILES} )

set( TEST25_FILES test25.f  slapqc.f 
  srmgen.f vfill.f outerr.f ismpl.f )
add_slatec_test( test25 ${TEST25_FILES} )



set( TEST26_FILES test26.f dlapqc.f 
  drmgen.f dfill.f duterr.f ismpl.f )
add_slatec_test( test26 ${TEST26_FILES} )




set( TEST27_FILES test27.f lseiqx.f qcglss.f )
add_slatec_test( test27 ${TEST27_FILES} )

set( TEST28_FILES test28.f dlseit.f dqcgls.f  )
add_slatec_test( test28 ${TEST28_FILES} )

set( TEST29_FILES test29.f dpntck.f  pntchk.f )
add_slatec_test( test29 ${TEST29_FILES} )

set( TEST30_FILES test30.f bspck.f 
  fb.f)
add_slatec_test( test30 ${TEST30_FILES} )

set( TEST31_FILES test31.f dbspck.f 
  dfb.f)
add_slatec_test( test31 ${TEST31_FILES} )



set( TEST32_FILES test32.f  pchqk1.f pchqk2.f pchqk3.f pchqk4.f pchqk5.f 
  evchck.f evpcck.f everck.f comp.f fdtrue.f )
add_slatec_test( test32 ${TEST32_FILES} )




set( TEST33_FILES test33.f dpchq1.f dpchq2.f dpchq3.f dpchq4.f dpchq5.f 
  devchk.f devpck.f deverk.f comp.f dfdtru.f )
add_slatec_test( test33 ${TEST33_FILES} )






set( TEST34_FILES test34.f cprpqx.f cqrtst.f dfztst.f fztest.f  rqrtst.f 
  pass.f )
add_slatec_test( test34 ${TEST34_FILES} )



set( TEST35_FILES test35.f  snsqqk.f sosnqx.f 
  sqjac2.f sqfcn2.f pass.f sosfnc.f )
add_slatec_test( test35 ${TEST35_FILES} )




set( TEST36_FILES test36.f dnsqqk.f dsosqx.f
  dqjac2.f dqfcn2.f pass.f dsosfn.f )
add_slatec_test( test36 ${TEST36_FILES} )





set( TEST37_FILES test37.f  sbocqx.f splpqx.f
  pass.f )
add_slatec_test( test37 ${TEST37_FILES} )




set( TEST38_FILES test38.f dbocqx.f dplpqx.f 
  pass.f)
add_slatec_test( test38 ${TEST38_FILES} )




set( TEST39_FILES test39.f cqag.f cqagi.f cqagp.f cqags.f cqawc.f cqawf.f cqawo.f 
  f1g.f cprin.f f2g.f f3g.f t0.f t1.f t2.f t3.f t4.f t5.f f1p.f f2p.f f3p.f f4p.f
  f0s.f f1s.f f2s.f f3s.f f4s.f f5s.f f0c.f f1c.f f0f.f f1f.f f0o.f f1o.f f2o.f 
  cqaws.f cqng.f f0ws.f f1ws.f f1n.f f2n.f f1n.f )
add_slatec_test( test39 ${TEST39_FILES} )



set( TEST40_FILES test40.f cdqag.f cdqagi.f cdqagp.f cdqags.f cdqawc.f cdqawf.f 
  cdqawo.f cdqaws.f cdqng.f cdqag.f df1g.f dprin.f df2g.f df3g.f
  dt0.f dt1.f dt2.f dt3.f dt4.f dt5.f dt1.f df1p.f df2p.f df3p.f df4p.f df1p.f
  df0s.f df1s.f df2s.f df3s.f df4s.f df5s.f df0c.f df1c.f df0f.f df1f.f 
  df0o.f df1o.f df2o.f df0ws.f df1n.f df2n.f df1ws.f )
add_slatec_test( test40 ${TEST40_FILES} )




set( TEST41_FILES test41.f avntst.f  qg8tst.f qn79qx.f 
  fqd1.f fqd2.f )
add_slatec_test( test41 ${TEST41_FILES} )




set( TEST42_FILES test42.f davnts.f dqg8ts.f dqn79q.f  
  dfqd1.f dfqd2.f )
add_slatec_test( test42 ${TEST42_FILES} )




set( TEST43_FILES test43.f  qxabm.f qxbdf.f qxbvsp.f qxrkf.f 
  fdeqc.f jac.f pass.f uivp.f fmat.f uvec.f gvec.f )
add_slatec_test_static_only( test43 ${TEST43_FILES} )




set( TEST44_FILES test44.f  qxdabm.f qxdbdf.f qxdbvs.f qxdrkf.f 
  dfdeqc.f djac.f dfdeqc.f pass.f duivp.f dfmat.f dfmat.f duvec.f 
  dgvec.f )
add_slatec_test_static_only( test44 ${TEST44_FILES} )




set( TEST45_FILES test45.f sdqck.f  sdf.f)
add_slatec_test( test45 ${TEST45_FILES} )




set( TEST46_FILES test46.f ddqck.f ddf.f )
add_slatec_test( test46 ${TEST46_FILES} )




set( TEST47_FILES test47.f cdqck.f cdf.f )
add_slatec_test( test47 ${TEST47_FILES} )




set( TEST48_FILES test48.f  sdasqc.f
  sdres1.f sdjac1.f sdres2.f sdjac2.f edit2.f )
add_slatec_test( test48 ${TEST48_FILES} )




set( TEST49_FILES test49.f ddasqc.f
  ddjac1.f ddres1.f ddjac2.f ddres2.f dedit2.f )
add_slatec_test( test49 ${TEST49_FILES} )




set( TEST50_FILES test50.f  qxblkt.f qxcrt.f qxcsp.f qxcyl.f qxgbun.f qxplr.f 
  qxssp.f )
add_slatec_test( test50 ${TEST50_FILES} )




set( TEST51_FILES test51.f fftqx.f  )
add_slatec_test( test51 ${TEST51_FILES} )




set( TEST52_FILES test52.f fcqx.f  pfitqx.f snls1q.f 
  cmpare.f pass.f fcn2.f fcn1.f fcn3.f )
add_slatec_test( test52 ${TEST52_FILES} )




set( TEST53_FILES test53.f dfcqx.f dnls1q.f dpfitt.f 
  dfcn2.f pass.f dfcn1.f dfcn3.f dcmpar.f )
add_slatec_test( test53 ${TEST53_FILES} )




set( TEST54_FILES test54.f dsrtqc.f hsrtqc.f  isrtqc.f ssrtqc.f )
add_slatec_test( test54 ${TEST54_FILES} )

