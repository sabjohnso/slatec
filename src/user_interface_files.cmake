########################################################################
#
# File: slatec/src/user_interface_files.cmake
#
# Purpose:
#
# Author: Samuel B. Johnson
#
# Revision History:


set( FISHPACK_FILES
  blktri.f   cblktr.f   cmgnbn.f genbun.f hstcrt.f hstcsp.f hstcyl.f hstplr.f
  hstssp.f hw3crt.f hwscrt.f hwscsp.f hwscyl.f hwsplr.f hwsssp.f pois3d.f
  poistg.f sepeli.f sepx4.f )

set( INTERFACE_FILES 
  aaaaaa.f acosh.f aie.f ai.f albeta.f algams.f ali.f alngam.f
  alnrel.f asinh.f atanh.f avint.f bakvec.f balanc.f balbak.f bandr.f
  bandv.f besi0e.f besi0.f besi1e.f besi1.f besi.f besj0.f besj1.f
  besj.f besk0e.f besk0.f besk1e.f besk1.f beskes.f besk.f besks.f
  besy0.f besy1.f besy.f beta.f betai.f bfqad.f bie.f bi.f
  binom.f bint4.f bintk.f bisect.f blktri.f bndacc.f bndsol.f bqr.f
  bskin.f bspdoc.f bspdr.f bspev.f bsppp.f bspvd.f bspvn.f bsqad.f
  bvalu.f bvsup.f c0lgmc.f cacos.f cacosh.f cairy.f carg.f casin.f
  casinh.f catan2.f catan.f catanh.f caxpy.f cbabk2.f cbal.f cbesh.f
  cbesi.f cbesj.f cbesk.f cbesy.f cbeta.f cbiry.f cblktr.f cbrt.f
  ccbrt.f cchdc.f cchdd.f cchex.f cchud.f ccopy.f ccosh.f ccot.f
  cdcdot.f cdotc.f cdotu.f cdriv1.f cdriv2.f cdriv3.f cexprl.f cgamma.f
  cgamr.f cgbco.f cgbdi.f cgbfa.f cgbmv.f cgbsl.f cgeco.f cgedi.f
  cgeev.f cgefa.f cgefs.f cgeir.f cgemm.f cgemv.f cgerc.f cgeru.f
  cgesl.f cg.f cgtsl.f chbmv.f chemm.f chemv.f cher2.f cher2k.f
  cher.f cherk.f ch.f chfdv.f chfev.f chico.f chidi.f chiev.f
  chifa.f chisl.f chkder.f chpco.f chpdi.f chpfa.f chpmv.f chpr2.f
  chpr.f chpsl.f chu.f cinvit.f clbeta.f clngam.f clnrel.f clog10.f
  cmgnbn.f cnbco.f cnbdi.f cnbfa.f cnbfs.f cnbir.f cnbsl.f combak.f
  comhes.f comlr2.f comlr.f comqr2.f comqr.f cortb.f corth.f cosdg.f
  cosqb.f cosqf.f cosqi.f cost.f costi.f cot.f cpbco.f cpbdi.f
  cpbfa.f cpbsl.f cpoco.f cpodi.f cpofa.f cpofs.f cpoir.f cposl.f
  cppco.f cppdi.f cppfa.f cppsl.f cpqr79.f cpsi.f cptsl.f cpzero.f
  cqrdc.f cqrsl.f crotg.f cscal.f csevl.f csico.f csidi.f csifa.f
  csinh.f csisl.f cspco.f cspdi.f cspfa.f cspsl.f csrot.f csscal.f
  csvdc.f cswap.f csymm.f csyr2k.f csyrk.f ctan.f ctanh.f ctbmv.f
  ctbsv.f ctpmv.f ctpsv.f ctrco.f ctrdi.f ctrmm.f ctrmv.f ctrsl.f
  ctrsm.f ctrsv.f cv.f d1mach.f d9pak.f d9upak.f dacosh.f daie.f
  dai.f dasinh.f dasum.f datanh.f davint.f daws.f daxpy.f dbcg.f
  dbesi0.f dbesi1.f dbesi.f dbesj0.f dbesj1.f dbesj.f dbesk0.f dbesk1.f
  dbesk.f dbesks.f dbesy0.f dbesy1.f dbesy.f dbeta.f dbetai.f dbfqad.f
  dbhin.f dbie.f dbi.f dbinom.f dbint4.f dbintk.f dbndac.f dbndsl.f
  dbocls.f dbols.f dbsi0e.f dbsi1e.f dbsk0e.f dbsk1e.f dbskes.f dbskin.f
  dbspdr.f dbspev.f dbsppp.f dbspvd.f dbspvn.f dbsqad.f dbvalu.f dbvsup.f
  dcbrt.f dcdot.f dcg.f dcgn.f dcgs.f dchdc.f dchdd.f dchex.f
  dchfdv.f dchfev.f dchud.f dchu.f dckder.f dcopy.f dcopym.f dcosdg.f
  dcot.f dcov.f dcpplt.f dcsevl.f dcv.f ddaws.f ddeabm.f ddebdf.f
  dderkf.f ddot.f ddriv1.f ddriv2.f ddriv3.f de1.f deabm.f debdf.f
  defc.f dei.f derfc.f derf.f derkf.f dexint.f dexprl.f dfac.f
  dfc.f dfzero.f dgamic.f dgami.f dgamit.f dgamlm.f dgamma.f dgamr.f
  dgaus8.f dgbco.f dgbdi.f dgbfa.f dgbmv.f dgbsl.f dgeco.f dgedi.f
  dgefa.f dgefs.f dgemm.f dgemv.f dger.f dgesl.f dglss.f dgmres.f
  dgtsl.f dhfti.f dintp.f dintrv.f dir.f dlbeta.f dlgams.f dli.f
  dllsia.f dllti2.f dlngam.f dlnrel.f dlpdoc.f dlsei.f dnbco.f dnbdi.f
  dnbfa.f dnbfs.f dnbsl.f dnls1e.f dnls1.f dnrm2.f dnsqe.f dnsq.f
  domn.f dp1vlu.f dpbco.f dpbdi.f dpbfa.f dpbsl.f dpchcm.f dpchfd.f
  dpchfe.f dpchia.f dpchic.f dpchid.f dpchim.f dpchsp.f dpcoef.f dpfqad.f
  dplint.f dpoch1.f dpoch.f dpoco.f dpodi.f dpofa.f dpofs.f dpolcf.f
  dpolft.f dpolvl.f dposl.f dppco.f dppdi.f dpperm.f dppfa.f dppqad.f
  dppsl.f dppval.f dpsi.f dpsifn.f dpsort.f dptsl.f dqage.f dqag.f
  dqagie.f dqagi.f dqagpe.f dqagp.f dqagse.f dqags.f dqawce.f dqawc.f
  dqawfe.f dqawf.f dqawoe.f dqawo.f dqawse.f dqaws.f dqc25c.f dqc25f.f
  dqc25s.f dqdota.f dqdoti.f dqk15.f dqk15i.f dqk15w.f dqk21.f dqk31.f
  dqk41.f dqk51.f dqk61.f dqmomo.f dqnc79.f dqng.f dqrdc.f dqrsl.f
  drc3jj.f drc3jm.f drc6j.f drc.f drd.f drf.f drj.f drot.f
  drotg.f drotm.f drotmg.f ds2lt.f ds2y.f dsbmv.f dscal.f dsd2s.f
  dsdbcg.f dsdcg.f dsdcgn.f dsdcgs.f dsdgmr.f dsdi.f dsdomn.f dsdot.f
  dsdscl.f dsds.f dsgs.f dsiccg.f dsico.f dsics.f dsidi.f dsifa.f
  dsilur.f dsilus.f dsindg.f dsisl.f dsjac.f dsli2.f dsli.f dsllti.f
  dslubc.f dslucn.f dslucs.f dslugm.f dslui2.f dslui4.f dslui.f dsluom.f
  dsluti.f dsmmi2.f dsmmti.f dsmtv.f dsmv.f dsort.f dsos.f dspco.f
  dspdi.f dspenc.f dspfa.f dsplp.f dspmv.f dspr2.f dspr.f dspsl.f
  dsteps.f dsvdc.f dswap.f dsymm.f dsymv.f dsyr2.f dsyr2k.f dsyr.f
  dsyrk.f dtbmv.f dtbsv.f dtin.f dtout.f dtpmv.f dtpsv.f dtrco.f
  dtrdi.f dtrmm.f dtrmv.f dtrsl.f dtrsm.f dtrsv.f dulsia.f dwnnls.f
  dxadd.f dxadj.f dxc210.f dxcon.f dxlegf.f dxnrmp.f dxred.f dxset.f
  e1.f efc.f ei.f eisdoc.f elmbak.f elmhes.f eltran.f erfc.f
  erf.f exint.f exprel.f ezfftb.f ezfftf.f ezffti.f fac.f fc.f
  fdump.f fftdoc.f figi2.f figi.f fundoc.f fzero.f gamic.f gami.f
  gamit.f gamlim.f gamma.f gamr.f gaus8.f genbun.f hfti.f hpperm.f
  hpsort.f hqr2.f hqr.f hstcrt.f hstcsp.f hstcyl.f hstplr.f hstssp.f
  htrib3.f htribk.f htrid3.f htridi.f hw3crt.f hwscrt.f hwscsp.f hwscyl.f
  hwsplr.f hwsssp.f i1mach.f icamax.f icopy.f idamax.f imtql1.f imtql2.f
  imtqlv.f initds.f inits.f intrv.f invit.f ipperm.f ipsort.f isamax.f
  isort.f iswap.f llsia.f lsei.f minfit.f numxer.f ortbak.f orthes.f
  ortran.f pchcm.f pchdoc.f pchfd.f pchfe.f pchia.f pchic.f pchid.f
  pchim.f pchsp.f pcoef.f pfqad.f poch1.f poch.f pois3d.f poistg.f
  polcof.f polfit.f polint.f polyvl.f ppqad.f ppval.f psi.f psifn.f
  pvalue.f qage.f qag.f qagie.f qagi.f qagpe.f qagp.f qagse.f
  qags.f qawce.f qawc.f qawfe.f qawf.f qawoe.f qawo.f qawse.f
  qaws.f qc25c.f qc25f.f qc25s.f qk15.f qk15i.f qk15w.f qk21.f
  qk31.f qk41.f qk51.f qk61.f qmomo.f qnc79.f qng.f qpdoc.f
  qzhes.f qzit.f qzval.f qzvec.f r1mach.f r9pak.f r9upak.f rand.f
  ratqr.f rc3jj.f rc3jm.f rc6j.f rc.f rd.f rebakb.f rebak.f
  reduc2.f reduc.f rf.f rgauss.f rg.f rgg.f rj.f rpqr79.f
  rpzero.f rsb.f rs.f rsgab.f rsgba.f rsg.f rsp.f rst.f
  rt.f runif.f sasum.f saxpy.f sbcg.f sbhin.f sbocls.f sbols.f
  scasum.f scg.f scgn.f scgs.f schdc.f schdd.f schex.f schud.f
  scnrm2.f scopy.f scopym.f scov.f scpplt.f sdot.f sdriv1.f sdriv2.f
  sdriv3.f sdsdot.f sepeli.f sepx4.f sgbco.f sgbdi.f sgbfa.f sgbmv.f
  sgbsl.f sgeco.f sgedi.f sgeev.f sgefa.f sgefs.f sgeir.f sgemm.f
  sgemv.f sger.f sgesl.f sglss.f sgmres.f sgtsl.f sindg.f sinqb.f
  sinqf.f sinqi.f sint.f sinti.f sintrp.f sir.f sllti2.f slpdoc.f
  snbco.f snbdi.f snbfa.f snbfs.f snbir.f snbsl.f snls1e.f snls1.f
  snrm2.f snsqe.f snsq.f somn.f sos.f spbco.f spbdi.f spbfa.f
  spbsl.f spenc.f splp.f spoco.f spodi.f spofa.f spofs.f spoir.f
  sposl.f sppco.f sppdi.f spperm.f sppfa.f sppsl.f spsort.f sptsl.f
  sqrdc.f sqrsl.f srot.f srotg.f srotm.f srotmg.f ss2lt.f ss2y.f
  ssbmv.f sscal.f ssd2s.f ssdbcg.f ssdcg.f ssdcgn.f ssdcgs.f ssdgmr.f
  ssdi.f ssdomn.f ssdscl.f ssds.f ssgs.f ssiccg.f ssico.f ssics.f
  ssidi.f ssiev.f ssifa.f ssilur.f ssilus.f ssisl.f ssjac.f ssli2.f
  ssli.f ssllti.f sslubc.f sslucn.f sslucs.f sslugm.f sslui2.f sslui4.f
  sslui.f ssluom.f ssluti.f ssmmi2.f ssmmti.f ssmtv.f ssmv.f ssort.f
  sspco.f sspdi.f sspev.f sspfa.f sspmv.f sspr2.f sspr.f sspsl.f
  ssvdc.f sswap.f ssymm.f ssymv.f ssyr2.f ssyr2k.f ssyr.f ssyrk.f
  stbmv.f stbsv.f steps.f stin.f stout.f stpmv.f stpsv.f strco.f
  strdi.f strmm.f strmv.f strsl.f strsm.f strsv.f tinvit.f tql1.f
  tql2.f tqlrat.f trbak1.f trbak3.f tred1.f tred2.f tred3.f tridib.f
  tsturm.f ulsia.f wnnls.f xadd.f xadj.f xc210.f xcon.f xerclr.f
  xerdmp.f xermax.f xgetf.f xgetua.f xgetun.f xlegf.f xnrmp.f xred.f
  xset.f xsetf.f xsetua.f xsetun.f zairy.f zbesh.f zbesi.f zbesj.f
  zbesk.f zbesy.f zbiry.f )


set( SUBSIDIARY_FILES
  asyik.f asyjy.f bcrh.f bdiff.f besknu.f besynu.f bkias.f bkisr.f
  bksol.f blktr1.f bnfac.f bnslv.f bsgq8.f bsplvd.f bsplvn.f bsrh.f
  bvder.f bvpor.f c1merg.f c9lgmc.f c9ln2r.f cacai.f cacon.f casyi.f
  cbinu.f cbknu.f cblkt1.f cbuni.f cbunk.f ccmpb.f cdcor.f cdcst.f
  cdiv.f cdntl.f cdntp.f cdpsc.f cdpst.f cdscl.f cdstp.f cdzro.f
  cfftb1.f cfftb.f cfftf1.f cfftf.f cffti1.f cffti.f cfod.f chfcm.f
  chfie.f chkpr4.f chkprm.f chksn4.f chksng.f ckscl.f cmlri.f cmpcsg.f
  cmposd.f cmposn.f cmposp.f cmptr3.f cmptrx.f compb.f cosgen.f cosqb1.f
  cosqf1.f cpadd.f cpevl.f cpevlr.f cproc.f cprocp.f cprod.f cprodp.f
  crati.f cs1s2.f cscale.f cseri.f cshch.f csroot.f cuchk.f cunhj.f
  cuni1.f cuni2.f cunik.f cunk1.f cunk2.f cuoik.f cwrsk.f d1merg.f
  d1mpyq.f d1updt.f d9aimp.f d9atn1.f d9b0mp.f d9b1mp.f d9chu.f d9gmic.f
  d9gmit.f d9knus.f d9lgic.f d9lgit.f d9lgmc.f d9ln2r.f dasyik.f dasyjy.f
  dbdiff.f dbkias.f dbkisr.f dbksol.f dbnfac.f dbnslv.f dbolsm.f dbsgq8.f
  dbsknu.f dbsynu.f dbvder.f dbvpor.f dcfod.f dchfcm.f dchfie.f dchkw.f
  dcoef.f dcscal.f ddaini.f ddajac.f ddanrm.f ddaslv.f ddassl.f ddastp.f
  ddatrp.f ddawts.f ddcor.f ddcst.f ddes.f ddntl.f ddntp.f ddoglg.f
  ddpsc.f ddpst.f ddscl.f ddstp.f ddzro.f defcmn.f defe4.f defehl.f
  defer.f denorm.f derkfs.f des.f dexbvp.f dfcmn.f dfdjc1.f dfdjc3.f
  dfehl.f dfspvd.f dfspvn.f dfulmt.f dgamln.f dgamrn.f dh12.f dhels.f
  dheqr.f dhkseq.f dhstrt.f dhvnrm.f dintyd.f djairy.f dlpdp.f dlsi.f
  dlsod.f dlssud.f dmacon.f dmgsbv.f dmout.f dmpar.f dogleg.f dohtrl.f
  dorth.f dorthr.f dpchbs.f dpchce.f dpchci.f dpchcs.f dpchdf.f dpchkt.f
  dpchng.f dpchst.f dpchsw.f dpigmr.f dpincw.f dpinit.f dpintm.f dpjac.f
  dplpce.f dplpdm.f dplpfe.f dplpfl.f dplpmn.f dplpmu.f dplpup.f dpnnzr.f
  dpopt.f dppgq8.f dprvec.f dprwpg.f dprwvr.f dpsixn.f dqcheb.f dqelg.f
  dqform.f dqpsrt.f dqrfac.f dqrslv.f dqwgtc.f dqwgtf.f dqwgts.f dreadp.f
  dreort.f drkfab.f drkfs.f drlcal.f drsco.f dslvs.f dsoseq.f dsossl.f
  dstod.f dstor1.f dstway.f dsuds.f dsvco.f du11ls.f du11us.f du12ls.f
  du12us.f dusrmt.f dvecs.f dvnrms.f dvout.f dwnlit.f dwnlsm.f dwnlt1.f
  dwnlt2.f dwnlt3.f dwritp.f dwupdt.f dx4.f dx.f dxlcal.f dxpmu.f
  dxpmup.f dxpnrm.f dxpqnu.f dxpsi.f dxqmu.f dxqnu.f dy4.f dyairy.f
  dy.f efcmn.f enorm.f exbvp.f ezfft1.f fcmn.f fdjac1.f fdjac3.f
  fulmat.f gamln.f gamrn.f h12.f hkseq.f hstart.f hstcs1.f hvnrm.f
  hwscs1.f hwsss1.f i1merg.f idloc.f indxa.f indxb.f indxc.f intyd.f
  inxca.f inxcb.f inxcc.f iploc.f isdbcg.f isdcg.f isdcgn.f isdcgs.f
  isdgmr.f isdir.f isdomn.f issbcg.f isscg.f isscgn.f isscgs.f issgmr.f
  issir.f issomn.f ivout.f j4save.f jairy.f la05ad.f la05as.f la05bd.f
  la05bs.f la05cd.f la05cs.f la05ed.f la05es.f lmpar.f lpdp.f lsame.f
  lsi.f lsod.f lssods.f lssuds.f macon.f mc20ad.f mc20as.f mgsbv.f
  minso4.f minsol.f mpadd2.f mpadd3.f mpadd.f mpblas.f mpcdm.f mpchk.f
  mpcmd.f mpdivi.f mperr.f mpmaxr.f mpmlp.f mpmul2.f mpmul.f mpmuli.f
  mpnzr.f mpovfl.f mpstr.f mpunfl.f ohtrol.f ohtror.f ortho4.f orthog.f
  orthol.f orthor.f passb2.f passb3.f passb4.f passb5.f passb.f passf2.f
  passf3.f passf4.f passf5.f passf.f pchbs.f pchce.f pchci.f pchcs.f
  pchdf.f pchkt.f pchngs.f pchst.f pchsw.f pgsf.f pimach.f pinitm.f
  pjac.f pnnzrs.f poisd2.f poisn2.f poisp2.f pos3d1.f postg2.f ppadd.f
  ppgq8.f ppgsf.f pppsf.f ppsgf.f ppspf.f proc.f procp.f prod.f
  prodp.f prvec.f prwpge.f prwvir.f psgf.f psixn.f pythag.f qcheb.f
  qelg.f qform.f qpsrt.f qrfac.f qrsolv.f qs2i1d.f qs2i1r.f qwgtc.f
  qwgtf.f qwgts.f r1mpyq.f r1updt.f r9aimp.f r9atn1.f r9chu.f r9gmic.f
  r9gmit.f r9knus.f r9lgic.f r9lgit.f r9lgmc.f r9ln2r.f radb2.f radb3.f
  radb4.f radb5.f radbg.f radf2.f radf3.f radf4.f radf5.f radfg.f
  reort.f rfftb1.f rfftb.f rfftf1.f rfftf.f rffti1.f rffti.f rkfab.f
  rsco.f rwupdt.f s1merg.f sbolsm.f schkw.f sclosm.f scoef.f sdaini.f
  sdajac.f sdanrm.f sdaslv.f sdassl.f sdastp.f sdatrp.f sdawts.f sdcor.f
  sdcst.f sdntl.f sdntp.f sdpsc.f sdpst.f sdscl.f sdstp.f sdzro.f
  shels.f sheqr.f slvs.f smout.f sods.f sopenm.f sorth.f soseqs.f
  sossol.f speli4.f spelip.f spigmr.f spincw.f spinit.f splpce.f splpdm.f
  splpfe.f splpfl.f splpmn.f splpmu.f splpup.f spopt.f sreadp.f srlcal.f
  stod.f stor1.f stway.f suds.f svco.f svd.f svecs.f svout.f
  swritp.f sxlcal.f tevlc.f tevls.f tri3.f tridq.f tris4.f trisp.f
  trix.f u11ls.f u11us.f u12ls.f u12us.f usrmat.f vnwrms.f wnlit.f
  wnlsm.f wnlt1.f wnlt2.f wnlt3.f xerbla.f xercnt.f xerhlt.f xermsg.f
  xerprn.f xersve.f xpmu.f xpmup.f xpnrm.f xpqnu.f xpsi.f xqmu.f
  xqnu.f yairy.f zabs.f zacai.f zacon.f zasyi.f zbinu.f zbknu.f
  zbuni.f zbunk.f zdiv.f zexp.f zkscl.f zlog.f zmlri.f zmlt.f
  zrati.f zs1s2.f zseri.f zshch.f zsqrt.f zuchk.f zunhj.f zuni1.f
  zuni2.f zunik.f zunk1.f zunk2.f zuoik.f zwrsk.f )