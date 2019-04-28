C     -*- fortran -*-
C     This file is autogenerated with f2py (version:2)
C     It contains Fortran 77 wrappers to fortran functions.

      subroutine f2pywraphtoepoch (htoepochf2pywrap, year, doy, ho
     &ur, miin, sec)
      external htoepoch
      integer*4 year
      integer*4 doy
      integer*4 hour
      integer*4 miin
      real*8 sec
      real*8 htoepochf2pywrap, htoepoch
      htoepochf2pywrap = htoepoch(year, doy, hour, miin, sec)
      end


      subroutine f2pywrapmtodoy (mtodoyf2pywrap, year, mon, day)
      external mtodoy
      integer*4 year
      integer*4 mon
      integer*4 day
      integer*4 mtodoyf2pywrap, mtodoy
      mtodoyf2pywrap = mtodoy(year, mon, day)
      end


      subroutine f2pywraploctime (loctimef2pywrap)
      external loctime
      character*17 loctimef2pywrap, loctime
      loctimef2pywrap = loctime()
      end


      subroutine f2pywrapendian (endianf2pywrap)
      external endian
      character*2 endianf2pywrap, endian
      endianf2pywrap = endian()
      end


      subroutine f2pywrapfactor2 (factor2f2pywrap, n)
      external factor2
      integer*4 n
      integer*4 factor2f2pywrap, factor2
      factor2f2pywrap = factor2(n)
      end


      subroutine f2pyinitdheadx(setupfunc)
      external setupfunc
      real*4 d0
      real*4 th
      real*4 ph
      integer*4 jy
      integer*4 jd
      integer*4 jh
      integer*4 jm
      real*4 sec
      real*4 tstart
      common /dheadx/ d0,th,ph,jy,jd,jh,jm,sec,tstart
      call setupfunc(d0,th,ph,jy,jd,jh,jm,sec,tstart)
      end

      subroutine f2pyinitsclrx(setupfunc)
      external setupfunc
      integer*4 n
      integer*4 l
      real*4 e1
      real*4 e2
      real*4 e3
      real*4 e4
      real*4 au
      real*4 av
      common /sclrx/ n,l,e1,e2,e3,e4,au,av
      call setupfunc(n,l,e1,e2,e3,e4,au,av)
      end

      subroutine f2pyinitc_dbio(setupfunc)
      external setupfunc
      integer*4 idbin
      integer*4 idbout
      character*256 dbin
      character*256 dbout
      character*256 dbcmt
      integer*4 idbcmt
      character*256 dbegn
      integer*4 idbegn
      character*256 dbwfdisc
      integer*4 idbwfdisc
      common /c_dbio/ idbin,idbout,dbin,dbout,dbcmt,idbcmt,dbegn,i
     &dbegn,dbwfdisc,idbwfdisc
      call setupfunc(idbin,idbout,dbin,dbout,dbcmt,idbcmt,dbegn,id
     &begn,dbwfdisc,idbwfdisc)
      end

      subroutine f2pyinitwts(setupfunc)
      external setupfunc
      real*4 wt(6,300000)
      common /wts/ wt
      call setupfunc(wt)
      end

      subroutine f2pyinitvecnlx(setupfunc)
      external setupfunc
      real*4 vecnl(8,300000)
      real*4 vecnlt(4,300000)
      common /vecnlx/ vecnl,vecnlt
      call setupfunc(vecnl,vecnlt)
      end

      subroutine f2pyinitpropx(setupfunc)
      external setupfunc
      real*8 prp(180000)
      common /propx/ prp
      call setupfunc(prp)
      end

      subroutine f2pyinitc_site(setupfunc)
      external setupfunc
      character sta_site(10000,6)
      integer*4 ondate_site(10000)
      integer*4 offdate_site(10000)
      real*4 lat_site(10000)
      real*4 lon_site(10000)
      real*4 elev_site(10000)
      character staname_site(10000,50)
      character statype_site(10000,4)
      character refsta_site(10000,6)
      real*4 dnorth_site(10000)
      real*4 deast_site(10000)
      character lddate_site(10000,17)
      integer*4 nrowsite
      common /c_site/ sta_site,ondate_site,offdate_site,lat_site,l
     &on_site,elev_site,staname_site,statype_site,refsta_site,dnorth_sit
     &e,deast_site,lddate_site,nrowsite
      call setupfunc(sta_site,ondate_site,offdate_site,lat_site,lo
     &n_site,elev_site,staname_site,statype_site,refsta_site,dnorth_site
     &,deast_site,lddate_site,nrowsite)
      end

      subroutine f2pyinitmodex(setupfunc)
      external setupfunc
      real*4 om(300000)
      real*4 a0(300000)
      real*4 omt(300000)
      real*4 a0t(300000)
      common /modex/ om,a0,omt,a0t
      call setupfunc(om,a0,omt,a0t)
      end

      subroutine f2pyinitgrnx(setupfunc)
      external setupfunc
      real*4 grn(360000)
      common /grnx/ grn
      call setupfunc(grn)
      end

      subroutine f2pyinitnames(setupfunc)
      external setupfunc
      character*256 fname1
      character*256 fname2
      character*256 fname3
      character*256 fname4
      character*256 fname5
      common /names/ fname1,fname2,fname3,fname4,fname5
      call setupfunc(fname1,fname2,fname3,fname4,fname5)
      end

      subroutine f2pyinitc_wfdisc(setupfunc)
      external setupfunc
      character sta_wfdisc(10000,6)
      character chan_wfdisc(10000,8)
      real*8 time_wfdisc(10000)
      integer*4 wfid_wfdisc(10000)
      integer*4 chanid_wfdisc(10000)
      integer*4 jdate_wfdisc(10000)
      real*8 endtime_wfdisc(10000)
      integer*4 nsamp_wfdisc(10000)
      real*4 samprate_wfdisc(10000)
      real*4 calib_wfdisc(10000)
      real*4 calper_wfdisc(10000)
      character instype_wfdisc(10000,6)
      character segtype_wfdisc(10000)
      character datatype_wfdisc(10000,2)
      character clip_wfdisc(10000)
      character dir_wfdisc(10000,64)
      character dfile_wfdisc(10000,32)
      integer*4 foff_wfdisc(10000)
      integer*4 commid_wfdisc(10000)
      character lddate_wfdisc(10000,17)
      integer*4 nrowwfdisc
      common /c_wfdisc/ sta_wfdisc,chan_wfdisc,time_wfdisc,wfid_wf
     &disc,chanid_wfdisc,jdate_wfdisc,endtime_wfdisc,nsamp_wfdisc,sampra
     &te_wfdisc,calib_wfdisc,calper_wfdisc,instype_wfdisc,segtype_wfdisc
     &,datatype_wfdisc,clip_wfdisc,dir_wfdisc,dfile_wfdisc,foff_wfdisc,c
     &ommid_wfdisc,lddate_wfdisc,nrowwfdisc
      call setupfunc(sta_wfdisc,chan_wfdisc,time_wfdisc,wfid_wfdis
     &c,chanid_wfdisc,jdate_wfdisc,endtime_wfdisc,nsamp_wfdisc,samprate_
     &wfdisc,calib_wfdisc,calper_wfdisc,instype_wfdisc,segtype_wfdisc,da
     &tatype_wfdisc,clip_wfdisc,dir_wfdisc,dfile_wfdisc,foff_wfdisc,comm
     &id_wfdisc,lddate_wfdisc,nrowwfdisc)
      end

      subroutine f2pyinitcsitechan(setupfunc)
      external setupfunc
      character sta_sitechan(10000,6)
      character chan_sitechan(10000,8)
      integer*4 ondate_sitechan(10000)
      integer*4 chanid_sitechan(10000)
      integer*4 offdate_sitechan(10000)
      character ctype_sitechan(10000,4)
      real*4 edepth_sitechan(10000)
      real*4 hang_sitechan(10000)
      real*4 vang_sitechan(10000)
      character descrip_sitechan(10000,50)
      character lddate_sitechan(10000,17)
      integer*4 nrowsitechan
      common /csitechan/ sta_sitechan,chan_sitechan,ondate_sitecha
     &n,chanid_sitechan,offdate_sitechan,ctype_sitechan,edepth_sitechan,
     &hang_sitechan,vang_sitechan,descrip_sitechan,lddate_sitechan,nrows
     &itechan
      call setupfunc(sta_sitechan,chan_sitechan,ondate_sitechan,ch
     &anid_sitechan,offdate_sitechan,ctype_sitechan,edepth_sitechan,hang
     &_sitechan,vang_sitechan,descrip_sitechan,lddate_sitechan,nrowsitec
     &han)
      end

      subroutine f2pyinitzfxx(setupfunc)
      external setupfunc
      real*8 z(3,6000)
      real*8 zp(3,6000)
      common /zfxx/ z,zp
      call setupfunc(z,zp)
      end

      subroutine f2pyinitpropc(setupfunc)
      external setupfunc
      real*8 ddt
      real*8 dts
      real*8 dt0
      real*8 dt1
      real*8 phi
      real*8 ain
      real*8 b0
      real*8 b1
      real*8 c0
      real*8 c1
      real*8 c2
      common /propc/ ddt,dts,dt0,dt1,phi,ain,b0,b1,c0,c1,c2
      call setupfunc(ddt,dts,dt0,dt1,phi,ain,b0,b1,c0,c1,c2)
      end

      subroutine f2pyinitsclxxx(setupfunc)
      external setupfunc
      real*4 x1
      real*4 r0
      real*4 x2
      real*4 f(4,3)
      common /sclxxx/ x1,r0,x2,f
      call setupfunc(x1,r0,x2,f)
      end

      subroutine f2pyinitc_eigen(setupfunc)
      external setupfunc
      integer*4 norder_eigen
      integer*4 lorder_eigen
      integer*4 eigid_eigen
      real*4 per_eigen
      real*4 phvel_eigen
      real*4 grvel_eigen
      real*4 attn_eigen
      integer*4 nraw_eigen
      integer*4 ncol_eigen
      integer*4 npar_eigen
      integer*4 foff_eigen
      integer*4 commid_eigen
      character*1 typeo_eigen
      character*2 datatype_eigen
      character*64 dir_eigen
      character*32 dfile_eigen
      character*17 lddate_eigen
      common /c_eigen/ norder_eigen,lorder_eigen,eigid_eigen,per_e
     &igen,phvel_eigen,grvel_eigen,attn_eigen,nraw_eigen,ncol_eigen,npar
     &_eigen,foff_eigen,commid_eigen,typeo_eigen,datatype_eigen,dir_eige
     &n,dfile_eigen,lddate_eigen
      call setupfunc(norder_eigen,lorder_eigen,eigid_eigen,per_eig
     &en,phvel_eigen,grvel_eigen,attn_eigen,nraw_eigen,ncol_eigen,npar_e
     &igen,foff_eigen,commid_eigen,typeo_eigen,datatype_eigen,dir_eigen,
     &dfile_eigen,lddate_eigen)
      end

      subroutine f2pyinitcubxxx(setupfunc)
      external setupfunc
      real*8 y
      real*8 y2
      real*8 y3
      real*8 x
      real*8 a1
      real*8 a2
      common /cubxxx/ y,y2,y3,x,a1,a2
      call setupfunc(y,y2,y3,x,a1,a2)
      end

