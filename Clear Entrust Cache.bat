@echo on
cd "\program files (x86)\Common Files\Entrust\ESP"
EESPUTIL -CLEARCACHE capolicy
EESPUTIL -CLEARCACHE crl
EESPUTIL -CLEARCACHE cacerts
EESPUTIL -CLEARCACHE usercerts
EESPUTIL -CLEARCACHE keyaccess
EESPUTIL -CLEARCACHE logbinarydetails
EESPUTIL -CLEARCACHE policycerts
pause