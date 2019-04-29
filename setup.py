#!/usr/bin/env python
import numpy as np
from numpy.distutils.core import setup,Extension
from setuptools import find_packages

minos_bran = Extension(name = 'minospy.minos_bran', 
       sources = ['src/minos_bran.f'])
eigcon = Extension(name = 'minospy.eigcon',
       sources = ['src/eigcon.f',
                  'src/time/time.f',
                  'src/fdb/fdb_eigen.f',
                  'src/fdb/fdbs.f',
                  'src/fdb/fdb_io.h',
                  'src/fdb/fdb_site.h',
                  'src/fdb/fdb_sitechan.h',
                  'src/fdb/fdb_wfdisc.h',
                  'src/fdb/fdb_eigen.h',
                  'src/fdb/swapn.c',
                  'src/fdb/config.h'])
green = Extension(name = 'minospy.green',
         sources = ['src/green.f',
                  'src/fftsubs.f',
                  'src/green.h',
                  'src/time/time.f',
                  'src/fdb/fdb_eigen.f',
                  'src/fdb/fdbs.f',
                  'src/fdb/fdb_io.h',
                  'src/fdb/fdb_site.h',
                  'src/fdb/fdb_sitechan.h',
                  'src/fdb/fdb_wfdisc.h',
                  'src/fdb/fdb_eigen.h',
                  'src/fdb/swapn.c',
                  'src/fdb/config.h'])
syndat = Extension(name = 'minospy.syndat',
         sources = ['src/syndat.f',
                  'src/fftsubs.f',
                  'src/green.h',
                  'src/time/time.f',
                  'src/fdb/fdb_eigen.f',
                  'src/fdb/fdbs.f',
                  'src/fdb/fdb_io.h',
                  'src/fdb/fdb_site.h',
                  'src/fdb/fdb_sitechan.h',
                  'src/fdb/fdb_wfdisc.h',
                  'src/fdb/fdb_eigen.h',
                  'src/fdb/swapn.c',
                  'src/fdb/config.h'])

setup(name='minospy',
      version='0.1',
      description='Python wrapper for mineos',
      author='Ross Maguire',
      author_email='rmaguire@umd.edu',
      url='www.github.com/romaguir/minospy',
      packages=find_packages(),
      license='GNU',
      test_suite='nose.collector',
      tests_require=['nose'],
      ext_modules = [minos_bran,eigcon,green,syndat])
