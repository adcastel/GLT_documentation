#!/bin/bash

doxygen glt_doc.h

cd latex

make clean && make

cp refman.pdf ../

cd ..

scp -r html/* adcastel@lynx.uji.es:www/GLT_doc/


cp refman.pdf $HOME/GLT/doc/
