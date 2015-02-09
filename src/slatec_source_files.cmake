########################################################################
#
# File: slatec/src/slatec_source_files.cmake
#
# Purpose: This file contains a list of source files for the SLATEC
#          library.  It was separated from the main build script for
#          clarity, due to the large number of files.
#
# Author: Samuel B. Johnson <sabjohnso@yahoo.com>
#
# Revision History: 
#
#

SET( SLATEC_SOURCE_FILES
  aaaaaa.f  bspdr.f   cdpsc.f   chpr2.f   cprodp.f  d9gmic.f  dbspev.f  ddzro.f   dintyd.f  dpjac.f   dqk15w.f  dslubc.f  dwnlit.f  gamln.f   isdomn.f  orthor.f  prwpge.f  r9lgic.f  scgn.f    sinti.f   srotm.f   stin.f    xerprn.f
  acosh.f   bspev.f   cdpst.f   chpsl.f   cpsi.f    d9gmit.f  dbsppp.f  de1.f     dir.f     dplint.f  dqk21.f   dslucn.f  dwnlsm.f  gamma.f   isort.f   ortran.f  prwvir.f  r9lgit.f  scgs.f    sintrp.f  srotmg.f  stod.f    xersve.f
  ai.f      bsplvd.f  cdriv1.f  chu.f     cptsl.f   d9knus.f  dbspvd.f  deabm.f   djairy.f  dplpce.f  dqk31.f   dslucs.f  dwnlt1.f  gamr.f    issbcg.f  passb.f   psgf.f    r9lgmc.f  schdc.f   sir.f     ss2lt.f   stor1.f   xgetf.f
  aie.f     bsplvn.f  cdriv2.f  cinvit.f  cpzero.f  d9lgic.f  dbspvn.f  debdf.f   dlbeta.f  dplpdm.f  dqk41.f   dslugm.f  dwnlt2.f  gamrn.f   isscg.f   passb2.f  psi.f     r9ln2r.f  schdd.f   sllti2.f  ss2y.f    stout.f   xgetua.f
  albeta.f  bsppp.f   cdriv3.f  ckscl.f   cqrdc.f   d9lgit.f  dbsqad.f  defc.f    dlgams.f  dplpfe.f  dqk51.f   dslui.f   dwnlt3.f  gaus8.f   isscgn.f  passb3.f  psifn.f   r9pak.f   schex.f   slpdoc.f  ssbmv.f   stpmv.f   xgetun.f
  algams.f  bspvd.f   cdscl.f   clbeta.f  cqrsl.f   d9lgmc.f  dbsynu.f  defcmn.f  dli.f     dplpfl.f  dqk61.f   dslui2.f  dwnnls.f  genbun.f  isscgs.f  passb4.f  psixn.f   r9upak.f  schkw.f   slvs.f    sscal.f   stpsv.f   xlegf.f
  ali.f     bspvn.f   cdstp.f   clngam.f  crati.f   d9ln2r.f  dbvalu.f  defe4.f   dllsia.f  dplpmn.f  dqmomo.f  dslui4.f  dwritp.f  h12.f     issgmr.f  passb5.f  pvalue.f  radb2.f   schud.f   smout.f   ssd2s.f   strco.f   xnrmp.f
  alngam.f  bsqad.f   cdzro.f   clnrel.f  crotg.f   d9pak.f   dbvder.f  defehl.f  dllti2.f  dplpmu.f  dqnc79.f  dsluom.f  dwupdt.f  hfti.f    issir.f   passf.f   pythag.f  radb3.f   sclosm.f  snbco.f   ssdbcg.f  strdi.f   xpmu.f
  alnrel.f  bsrh.f    cexprl.f  clog10.f  cs1s2.f   d9upak.f  dbvpor.f  defer.f   dlngam.f  dplpup.f  dqng.f    dsluti.f  dx.f      hkseq.f   issomn.f  passf2.f  qag.f     radb4.f   scnrm2.f  snbdi.f   ssdcg.f   strmm.f   xpmup.f
  asinh.f   bvalu.f   cfftb.f   cmgnbn.f  cscal.f   dacosh.f  dbvsup.f  dei.f     dlnrel.f  dpnnzr.f  dqpsrt.f  dslvs.f   dx4.f     hpperm.f  iswap.f   passf3.f  qage.f    radb5.f   scoef.f   snbfa.f   ssdcgn.f  strmv.f   xpnrm.f
  asyik.f   bvder.f   cfftb1.f  cmlri.f   cscale.f  dai.f     dcbrt.f   denorm.f  dlpdoc.f  dpoch.f   dqrdc.f   dsmmi2.f  dxadd.f   hpsort.f  ivout.f   passf4.f  qagi.f    radbg.f   scopy.f   snbfs.f   ssdcgs.f  strsl.f   xpqnu.f
  asyjy.f   bvpor.f   cfftf.f   cmpcsg.f  cseri.f   daie.f    dcdot.f   derf.f    dlpdp.f   dpoch1.f  dqrfac.f  dsmmti.f  dxadj.f   hqr.f     j4save.f  passf5.f  qagie.f   radf2.f   scopym.f  snbir.f   ssdgmr.f  strsm.f   xpsi.f
  atanh.f   bvsup.f   cfftf1.f  cmposd.f  csevl.f   dasinh.f  dcfod.f   derfc.f   dlsei.f   dpoco.f   dqrsl.f   dsmtv.f   dxc210.f  hqr2.f    jairy.f   pchbs.f   qagp.f    radf3.f   scov.f    snbsl.f   ssdi.f    strsv.f   xqmu.f
  avint.f   c0lgmc.f  cffti.f   cmposn.f  cshch.f   dasum.f   dcg.f     derkf.f   dlsi.f    dpodi.f   dqrslv.f  dsmv.f    dxcon.f   hstart.f  la05ad.f  pchce.f   qagpe.f   radf4.f   scpplt.f  snls1.f   ssdomn.f  stway.f   xqnu.f
  bakvec.f  c1merg.f  cffti1.f  cmposp.f  csico.f   dasyik.f  dcgn.f    derkfs.f  dlsod.f   dpofa.f   dqwgtc.f  dsort.f   dxlcal.f  hstcrt.f  la05as.f  pchci.f   qags.f    radf5.f   sdaini.f  snls1e.f  ssds.f    suds.f    xred.f
  balanc.f  c9lgmc.f  cfod.f    cmptr3.f  csidi.f   dasyjy.f  dcgs.f    des.f     dlssud.f  dpofs.f   dqwgtf.f  dsos.f    dxlegf.f  hstcs1.f  la05bd.f  pchcm.f   qagse.f   radfg.f   sdajac.f  snrm2.f   ssdscl.f  svco.f    xset.f
  balbak.f  c9ln2r.f  cg.f      cmptrx.f  csifa.f   datanh.f  dchdc.f   dexbvp.f  dmacon.f  dpolcf.f  dqwgts.f  dsoseq.f  dxnrmp.f  hstcsp.f  la05bs.f  pchcs.f   qawc.f    rand.f    sdanrm.f  snsq.f    ssgs.f    svd.f     xsetf.f
  bandr.f   cacai.f   cgamma.f  cnbco.f   csinh.f   davint.f  dchdd.f   dexint.f  dmgsbv.f  dpolft.f  drc.f     dsossl.f  dxpmu.f   hstcyl.f  la05cd.f  pchdf.f   qawce.f   ratqr.f   sdaslv.f  snsqe.f   ssiccg.f  svecs.f   xsetua.f
  bandv.f   cacon.f   cgamr.f   cnbdi.f   csisl.f   daws.f    dchex.f   dexprl.f  dmout.f   dpolvl.f  drc3jj.f  dspco.f   dxpmup.f  hstplr.f  la05cs.f  pchdoc.f  qawf.f    rc.f      sdassl.f  sods.f    ssico.f   svout.f   xsetun.f
  bcrh.f    cacos.f   cgbco.f   cnbfa.f   cspco.f   daxpy.f   dchfcm.f  dfac.f    dmpar.f   dpopt.f   drc3jm.f  dspdi.f   dxpnrm.f  hstssp.f  la05ed.f  pchfd.f   qawfe.f   rc3jj.f   sdastp.f  somn.f    ssics.f   swritp.f  yairy.f
  bdiff.f   cacosh.f  cgbdi.f   cnbfs.f   cspdi.f   dbcg.f    dchfdv.f  dfc.f     dnbco.f   dposl.f   drc6j.f   dspenc.f  dxpqnu.f  htrib3.f  la05es.f  pchfe.f   qawo.f    rc3jm.f   sdatrp.f  sopenm.f  ssidi.f   sxlcal.f  zabs.f
  besi.f    cairy.f   cgbfa.f   cnbir.f   cspfa.f   dbdiff.f  dchfev.f  dfcmn.f   dnbdi.f   dppco.f   drd.f     dspfa.f   dxpsi.f   htribk.f  llsia.f   pchia.f   qawoe.f   rc6j.f    sdawts.f  sorth.f   ssiev.f   tevlc.f   zacai.f
  besi0.f   carg.f    cgbmv.f   cnbsl.f   cspsl.f   dbesi.f   dchfie.f  dfdjc1.f  dnbfa.f   dppdi.f   dreadp.f  dsplp.f   dxqmu.f   htrid3.f  lmpar.f   pchic.f   qaws.f    rd.f      sdcor.f   sos.f     ssifa.f   tevls.f   zacon.f
  besi0e.f  casin.f   cgbsl.f   combak.f  csroot.f  dbesi0.f  dchkw.f   dfdjc3.f  dnbfs.f   dpperm.f  dreort.f  dspmv.f   dxqnu.f   htridi.f  lpdp.f    pchid.f   qawse.f   rebak.f   sdcst.f   soseqs.f  ssilur.f  tinvit.f  zairy.f
  besi1.f   casinh.f  cgeco.f   comhes.f  csrot.f   dbesi1.f  dchu.f    dfehl.f   dnbsl.f   dppfa.f   drf.f     dspr.f    dxred.f   hvnrm.f   lsame.f   pchim.f   qc25c.f   rebakb.f  sdntl.f   sossol.f  ssilus.f  tql1.f    zasyi.f
  besi1e.f  casyi.f   cgedi.f   comlr.f   csscal.f  dbesj.f   dchud.f   dfspvd.f  dnls1.f   dppgq8.f  drj.f     dspr2.f   dxset.f   hw3crt.f  lsei.f    pchkt.f   qc25f.f   reduc.f   sdntp.f   spbco.f   ssisl.f   tql2.f    zbesh.f
  besj.f    catan.f   cgeev.f   comlr2.f  csvdc.f   dbesj0.f  dckder.f  dfspvn.f  dnls1e.f  dppqad.f  drkfab.f  dspsl.f   dy.f      hwscrt.f  lsi.f     pchngs.f  qc25s.f   reduc2.f  sdot.f    spbdi.f   ssjac.f   tqlrat.f  zbesi.f
  besj0.f   catan2.f  cgefa.f   compb.f   cswap.f   dbesj1.f  dcoef.f   dfulmt.f  dnrm2.f   dppsl.f   drkfs.f   dsteps.f  dy4.f     hwscs1.f  lsod.f    pchsp.f   qcheb.f   reort.f   sdpsc.f   spbfa.f   ssli.f    trbak1.f  zbesj.f
  besj1.f   catanh.f  cgefs.f   comqr.f   csymm.f   dbesk.f   dcopy.f   dfzero.f  dnsq.f    dppval.f  drlcal.f  dstod.f   dyairy.f  hwscsp.f  lssods.f  pchst.f   qelg.f    rf.f      sdpst.f   spbsl.f   ssli2.f   trbak3.f  zbesk.f
  besk.f    caxpy.f   cgeir.f   comqr2.f  csyr2k.f  dbesk0.f  dcopym.f  dgami.f   dnsqe.f   dprvec.f  drot.f    dstor1.f  e1.f      hwscyl.f  lssuds.f  pchsw.f   qform.f   rfftb.f   sdriv1.f  speli4.f  ssllti.f  tred1.f   zbesy.f
  besk0.f   cbabk2.f  cgemm.f   cortb.f   csyrk.f   dbesk1.f  dcosdg.f  dgamic.f  dogleg.f  dprwpg.f  drotg.f   dstway.f  efc.f     hwsplr.f  macon.f   pcoef.f   qk15.f    rfftb1.f  sdriv2.f  spelip.f  sslubc.f  tred2.f   zbinu.f
  besk0e.f  cbal.f    cgemv.f   corth.f   ctan.f    dbesks.f  dcot.f    dgamit.f  dohtrl.f  dprwvr.f  drotm.f   dsuds.f   efcmn.f   hwsss1.f  mc20ad.f  pfqad.f   qk15i.f   rfftf.f   sdriv3.f  spenc.f   sslucn.f  tred3.f   zbiry.f
  besk1.f   cbesh.f   cgerc.f   cosdg.f   ctanh.f   dbesy.f   dcov.f    dgamlm.f  domn.f    dpsi.f    drotmg.f  dsvco.f   ei.f      hwsssp.f  mc20as.f  pgsf.f    qk15w.f   rfftf1.f  sdscl.f   spigmr.f  sslucs.f  tri3.f    zbknu.f
  besk1e.f  cbesi.f   cgeru.f   cosgen.f  ctbmv.f   dbesy0.f  dcpplt.f  dgamln.f  dorth.f   dpsifn.f  drsco.f   dsvdc.f   eisdoc.f  i1mach.f  mgsbv.f   pimach.f  qk21.f    rffti.f   sdsdot.f  spincw.f  sslugm.f  tridib.f  zbuni.f
  beskes.f  cbesj.f   cgesl.f   cosqb.f   ctbsv.f   dbesy1.f  dcscal.f  dgamma.f  dorthr.f  dpsixn.f  ds2lt.f   dswap.f   elmbak.f  i1merg.f  minfit.f  pinitm.f  qk31.f    rffti1.f  sdstp.f   spinit.f  sslui.f   tridq.f   zbunk.f
  besknu.f  cbesk.f   cgtsl.f   cosqb1.f  ctpmv.f   dbeta.f   dcsevl.f  dgamr.f   dp1vlu.f  dpsort.f  ds2y.f    dsymm.f   elmhes.f  icamax.f  minso4.f  pjac.f    qk41.f    rg.f      sdzro.f   splp.f    sslui2.f  tris4.f   zdiv.f
  besks.f   cbesy.f   ch.f      cosqf.f   ctpsv.f   dbetai.f  dcv.f     dgamrn.f  dpbco.f   dptsl.f   dsbmv.f   dsymv.f   eltran.f  icopy.f   minsol.f  pnnzrs.f  qk51.f    rgauss.f  sepeli.f  splpce.f  sslui4.f  trisp.f   zexp.f
  besy.f    cbeta.f   chbmv.f   cosqf1.f  ctrco.f   dbfqad.f  ddaini.f  dgaus8.f  dpbdi.f   dqag.f    dscal.f   dsyr.f    enorm.f   idamax.f  mpadd.f   poch.f    qk61.f    rgg.f     sepx4.f   splpdm.f  ssluom.f  trix.f    zkscl.f
  besy0.f   cbinu.f   chemm.f   cosqi.f   ctrdi.f   dbhin.f   ddajac.f  dgbco.f   dpbfa.f   dqage.f   dsd2s.f   dsyr2.f   erf.f     idloc.f   mpadd2.f  poch1.f   qmomo.f   rj.f      sgbco.f   splpfe.f  ssluti.f  tsturm.f  zlog.f
  besy1.f   cbiry.f   chemv.f   cost.f    ctrmm.f   dbi.f     ddanrm.f  dgbdi.f   dpbsl.f   dqagi.f   dsdbcg.f  dsyr2k.f  erfc.f    imtql1.f  mpadd3.f  pois3d.f  qnc79.f   rkfab.f   sgbdi.f   splpfl.f  ssmmi2.f  u11ls.f   zmlri.f
  besynu.f  cbknu.f   cher.f    costi.f   ctrmv.f   dbie.f    ddaslv.f  dgbfa.f   dpchbs.f  dqagie.f  dsdcg.f   dsyrk.f   exbvp.f   imtql2.f  mpblas.f  poisd2.f  qng.f     rpqr79.f  sgbfa.f   splpmn.f  ssmmti.f  u11us.f   zmlt.f
  beta.f    cblkt1.f  cher2.f   cot.f     ctrsl.f   dbinom.f  ddassl.f  dgbmv.f   dpchce.f  dqagp.f   dsdcgn.f  dtbmv.f   exint.f   imtqlv.f  mpcdm.f   poisn2.f  qpdoc.f   rpzero.f  sgbmv.f   splpmu.f  ssmtv.f   u12ls.f   zrati.f
  betai.f   cblktr.f  cher2k.f  cpadd.f   ctrsm.f   dbint4.f  ddastp.f  dgbsl.f   dpchci.f  dqagpe.f  dsdcgs.f  dtbsv.f   exprel.f  indxa.f   mpchk.f   poisp2.f  qpsrt.f   rs.f      sgbsl.f   splpup.f  ssmv.f    u12us.f   zs1s2.f
  bfqad.f   cbrt.f    cherk.f   cpbco.f   ctrsv.f   dbintk.f  ddatrp.f  dgeco.f   dpchcm.f  dqags.f   dsdgmr.f  dtin.f    ezfft1.f  indxb.f   mpcmd.f   poistg.f  qrfac.f   rsb.f     sgeco.f   spoco.f   ssort.f   ulsia.f   zseri.f
  bi.f      cbuni.f   chfcm.f   cpbdi.f   cuchk.f   dbkias.f  ddaws.f   dgedi.f   dpchcs.f  dqagse.f  dsdi.f    dtout.f   ezfftb.f  indxc.f   mpdivi.f  polcof.f  qrsolv.f  rsco.f    sgedi.f   spodi.f   sspco.f   usrmat.f  zshch.f
  bie.f     cbunk.f   chfdv.f   cpbfa.f   cunhj.f   dbkisr.f  ddawts.f  dgefa.f   dpchdf.f  dqawc.f   dsdomn.f  dtpmv.f   ezfftf.f  initds.f  mperr.f   polfit.f  qs2i1d.f  rsg.f     sgeev.f   spofa.f   sspdi.f   vnwrms.f  zsqrt.f
  binom.f   ccbrt.f   chfev.f   cpbsl.f   cuni1.f   dbksol.f  ddcor.f   dgefs.f   dpchfd.f  dqawce.f  dsdot.f   dtpsv.f   ezffti.f  inits.f   mpmaxr.f  polint.f  qs2i1r.f  rsgab.f   sgefa.f   spofs.f   sspev.f   wnlit.f   zuchk.f
  bint4.f   cchdc.f   chfie.f   cpevl.f   cuni2.f   dbndac.f  ddcst.f   dgemm.f   dpchfe.f  dqawf.f   dsds.f    dtrco.f   fac.f     intrv.f   mpmlp.f   polyvl.f  qwgtc.f   rsgba.f   sgefs.f   spoir.f   sspfa.f   wnlsm.f   zunhj.f
  bintk.f   cchdd.f   chico.f   cpevlr.f  cunik.f   dbndsl.f  ddeabm.f  dgemv.f   dpchia.f  dqawfe.f  dsdscl.f  dtrdi.f   fc.f      intyd.f   mpmul.f   pos3d1.f  qwgtf.f   rsp.f     sgeir.f   spopt.f   sspmv.f   wnlt1.f   zuni1.f
  bisect.f  cchex.f   chidi.f   cpoco.f   cunk1.f   dbnfac.f  ddebdf.f  dger.f    dpchic.f  dqawo.f   dsgs.f    dtrmm.f   fcmn.f    invit.f   mpmul2.f  postg2.f  qwgts.f   rst.f     sgemm.f   sposl.f   sspr.f    wnlt2.f   zuni2.f
  bkias.f   cchud.f   chiev.f   cpodi.f   cunk2.f   dbnslv.f  dderkf.f  dgesl.f   dpchid.f  dqawoe.f  dsiccg.f  dtrmv.f   fdjac1.f  inxca.f   mpmuli.f  ppadd.f   qzhes.f   rt.f      sgemv.f   sppco.f   sspr2.f   wnlt3.f   zunik.f
  bkisr.f   ccmpb.f   chifa.f   cpofa.f   cuoik.f   dbocls.f  ddes.f    dglss.f   dpchim.f  dqaws.f   dsico.f   dtrsl.f   fdjac3.f  inxcb.f   mpnzr.f   ppgq8.f   qzit.f    runif.f   sger.f    sppdi.f   sspsl.f   wnnls.f   zunk1.f
  bksol.f   ccopy.f   chisl.f   cpofs.f   cv.f      dbols.f   ddntl.f   dgmres.f  dpchkt.f  dqawse.f  dsics.f   dtrsm.f   fdump.f   inxcc.f   mpovfl.f  ppgsf.f   qzval.f   rwupdt.f  sgesl.f   spperm.f  ssvdc.f   xadd.f    zunk2.f
  blktr1.f  ccosh.f   chkder.f  cpoir.f   cwrsk.f   dbolsm.f  ddntp.f   dgtsl.f   dpchng.f  dqc25c.f  dsidi.f   dtrsv.f   fftdoc.f  iploc.f   mpstr.f   pppsf.f   qzvec.f   s1merg.f  sglss.f   sppfa.f   sswap.f   xadj.f    zuoik.f
  blktri.f  ccot.f    chkpr4.f  cposl.f   d1mach.f  dbsgq8.f  ddoglg.f  dh12.f    dpchsp.f  dqc25f.f  dsifa.f   du11ls.f  figi.f    ipperm.f  mpunfl.f  ppqad.f   r1mach.f  sasum.f   sgmres.f  sppsl.f   ssymm.f   xc210.f   zwrsk.f
  bndacc.f  cdcdot.f  chkprm.f  cppco.f   d1merg.f  dbsi0e.f  ddot.f    dhels.f   dpchst.f  dqc25s.f  dsilur.f  du11us.f  figi2.f   ipsort.f  numxer.f  ppsgf.f   r1mpyq.f  saxpy.f   sgtsl.f   spsort.f  ssymv.f   xcon.f    
  bndsol.f  cdcor.f   chksn4.f  cppdi.f   d1mpyq.f  dbsi1e.f  ddpsc.f   dheqr.f   dpchsw.f  dqcheb.f  dsilus.f  du12ls.f  fulmat.f  isamax.f  ohtrol.f  ppspf.f   r1updt.f  sbcg.f    shels.f   sptsl.f   ssyr.f    xerbla.f  
  bnfac.f   cdcst.f   chksng.f  cppfa.f   d1updt.f  dbsk0e.f  ddpst.f   dhfti.f   dpcoef.f  dqdota.f  dsindg.f  du12us.f  fundoc.f  isdbcg.f  ohtror.f  ppval.f   r9aimp.f  sbhin.f   sheqr.f   sqrdc.f   ssyr2.f   xerclr.f  
  bnslv.f   cdiv.f    chpco.f   cppsl.f   d9aimp.f  dbsk1e.f  ddriv1.f  dhkseq.f  dpfqad.f  dqdoti.f  dsisl.f   dulsia.f  fzero.f   isdcg.f   ortbak.f  proc.f    r9atn1.f  sbocls.f  sindg.f   sqrsl.f   ssyr2k.f  xercnt.f  
  bqr.f     cdntl.f   chpdi.f   cpqr79.f  d9atn1.f  dbskes.f  ddriv2.f  dhstrt.f  dpigmr.f  dqelg.f   dsjac.f   dusrmt.f  gami.f    isdcgn.f  orthes.f  procp.f   r9chu.f   sbols.f   sinqb.f   sreadp.f  ssyrk.f   xerdmp.f  
  bsgq8.f   cdntp.f   chpfa.f   cproc.f   d9b0mp.f  dbskin.f  ddriv3.f  dhvnrm.f  dpincw.f  dqform.f  dsli.f    dvecs.f   gamic.f   isdcgs.f  ortho4.f  prod.f    r9gmic.f  sbolsm.f  sinqf.f   srlcal.f  stbmv.f   xerhlt.f  
  bskin.f   cdotc.f   chpmv.f   cprocp.f  d9b1mp.f  dbsknu.f  ddscl.f   dintp.f   dpinit.f  dqk15.f   dsli2.f   dvnrms.f  gamit.f   isdgmr.f  orthog.f  prodp.f   r9gmit.f  scasum.f  sinqi.f   srot.f    stbsv.f   xermax.f  
  bspdoc.f  cdotu.f   chpr.f    cprod.f   d9chu.f   dbspdr.f  ddstp.f   dintrv.f  dpintm.f  dqk15i.f  dsllti.f  dvout.f   gamlim.f  isdir.f   orthol.f  prvec.f   r9knus.f  scg.f     sint.f    srotg.f   steps.f   xermsg.f  )

