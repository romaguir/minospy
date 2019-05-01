import os
import minospy
from minospy import minos_bran
from minospy import eigcon
from minospy import green
from minospy import syndat
from minospy import cucss2sac

minospath=minospy.__path__[0]
os.chdir(minospath+'/../tests/')
print os.getcwd()

modelfile='testdata/prem_ocean.txt'
modesfile='pymodes.out'
evnt='testdata/china_cmt_event'
eigfile='pyeig.out'
fout='pydbtest'
green_db='green_db'
jcom=3

def test1():
    #-------------------------------------------------------------------
    # test minos_bran
    #-------------------------------------------------------------------
    eps=1e-9
    wgrav=10.0
    jcom=3
    lmin=0
    lmax=1000
    wmin=0.0
    wmax=100.0 #10 s period
    nmin=0                                                                  
    nmax=0
    minos_bran.main(modelfile,modesfile,eigfile,eps,wgrav,
                    jcom,lmin,lmax,wmin,wmax,nmin,nmax)

def test2():
    #-------------------------------------------------------------------
    # test eigcon
    #-------------------------------------------------------------------
    dmax=100.0
    eigcon.main(jcom,modelfile,dmax,modesfile,eigfile,fout)

def test3():
    #-------------------------------------------------------------------
    # test green
    #-------------------------------------------------------------------
    site='./testdata/short'
    dbi='testdata/db_list'
    fmin_mhz=0.0
    fmax_mhz=166.0
    npts=10000
    green.main(site,dbi,evnt,fmin_mhz,fmax_mhz,npts,green_db)

def test4():
    #-------------------------------------------------------------------
    # test syndat
    #-------------------------------------------------------------------
    itptens=0 #source type (0=moment, 1=nodal plane 1, 2=nodal plane 2)
    db_out='syndat_out'
    ikind=0 #type of motion (0=accel, 1=vel, 2=disp)
    syndat.main(evnt,itptens,green_db,db_out,ikind)

def test5():
    #-------------------------------------------------------------------
    # test cucss2sac
    #-------------------------------------------------------------------
    cucss2sac.system()

def cleanup():
    os.remove(fout+'.eigen')
    os.remove(modesfile)
    os.remove(eigfile)
    os.remove(fout+'.eigen.dat/eigen')
    os.rmdir(fout+'.eigen.dat')

def main():
    test1()
    test2()
    test3()

    for i in range(0,50):
        test4()
        test5()

main()
cleanup()
