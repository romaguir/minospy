import os
import minospy
from minospy import minos_bran
from minospy import eigcon
from minospy import green
from minospy import syndat

minospath=minospy.__path__[0]
os.chdir(minospath+'/../tests/')
print os.getcwd()

modelfile='testdata/prem_ocean.txt'
modesfile='pymodes.out'
eigfile='pyeig.out'
fout='pydbtest'
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

def cleanup():
    os.remove(fout+'.eigen')
    os.remove(modesfile)
    os.remove(eigfile)
    os.remove(fout+'.eigen.dat/eigen')
    os.rmdir(fout+'.eigen.dat')

def main():
    test1()
    test2()

main()
cleanup()
