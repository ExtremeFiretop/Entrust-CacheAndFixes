@echo off

REM Check if ecautil.exe exists
IF EXIST "C:\Program Files (x86)\Common Files\Entrust\ECAW\ecautil.exe" (
    cd "C:\Program Files (x86)\Common Files\Entrust\ECAW"
    ecautil.exe -CLEARCACHE capolicy
    ecautil.exe -CLEARCACHE crl
    ecautil.exe -CLEARCACHE cacerts
    ecautil.exe -CLEARCACHE usercerts
    ecautil.exe -CLEARCACHE keyaccess
    ecautil.exe -CLEARCACHE logbinarydetails
    ecautil.exe -CLEARCACHE policycerts
) ELSE (
    REM Check if EESPUTIL.exe exists
    IF EXIST "C:\Program Files (x86)\Common Files\Entrust\ESP\EESPUTIL.exe" (
        cd "C:\Program Files (x86)\Common Files\Entrust\ESP"
        EESPUTIL.exe -CLEARCACHE capolicy
        EESPUTIL.exe -CLEARCACHE crl
        EESPUTIL.exe -CLEARCACHE cacerts
        EESPUTIL.exe -CLEARCACHE usercerts
        EESPUTIL.exe -CLEARCACHE keyaccess
        EESPUTIL.exe -CLEARCACHE logbinarydetails
        EESPUTIL.exe -CLEARCACHE policycerts
    ) ELSE (
        echo Neither ecautil.exe nor EESPUTIL.exe were found.
    )
)

pause
