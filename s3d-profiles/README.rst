
S3D profile generation
=======================

Generate Simplify3d profiles for some machine/nozzle combinations.

Common settings used by all resulting profiles are in *common.fff*, this acts as a base
of all result profiles.

Machine dependent settings are in *machine-ender5.add* *machine-jennyprinter.add* *machine-um2.add*.

Nozzle settings are in *nozzle40.add* and *nozzle80.add*.

Material settings are in *material.add* and quality related stuff is in *qual-n40.add* and *qual-n80.add*.

Usage:

::

   ➜  s3d-profiles git:(main) ✗ ./create_s3d_profiles.sh                          
   Generationg S3D profile for jennyprinter (nozzle: 0.40mm) in ./jennyprinter-n40.fff
   Generationg S3D profile for um2 (nozzle: 0.40mm) in ./um2-n40.fff
   Generationg S3D profile for ender5 (nozzle: 0.40mm) in ./ender5-n40.fff
   Generationg S3D profile for jennyprinter (nozzle: 0.80mm) in ./jennyprinter-n80.fff
   Generationg S3D profile for um2 (nozzle: 0.80mm) in ./um2-n80.fff
   Generationg S3D profile for ender5 (nozzle: 0.80mm) in ./ender5-n80.fff

   ➜  s3d-profiles git:(main) ✗ ls -rtl *.fff
   -rw-r--r-- 1 erwin users  7985 Sep  7 09:59 common.fff
   -rw-r--r-- 1 erwin users 10358 Nov 10 16:55 jennyprinter-n40.fff
   -rw-r--r-- 1 erwin users 10349 Nov 10 16:55 um2-n40.fff
   -rw-r--r-- 1 erwin users 10354 Nov 10 16:55 ender5-n40.fff
   -rw-r--r-- 1 erwin users 14305 Nov 10 16:55 um2-n80.fff
   -rw-r--r-- 1 erwin users 14314 Nov 10 16:55 jennyprinter-n80.fff
   -rw-r--r-- 1 erwin users 14310 Nov 10 16:55 ender5-n80.fff
   ➜  s3d-profiles git:(main) ✗

