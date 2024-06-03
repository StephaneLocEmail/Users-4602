if not "%1"=="" cd %1Htm\dev\mStore_site_en

call build-copy %1

if not "%1"=="" cd %1Htm\dev\mStore_site_en

rd ..\mStore\phonegap /s /q
rd ..\mStore\resources\icons /s /q
rd ..\mStore\resources\screens /s /q

md ..\mStore\phonegap
md ..\mStore\resources\icons
md ..\mStore\resources\screens

xcopy "res\*.*" "..\mStore\phonegap\www\res\" /s /e /y /i

copy config.xml ..\mStore\config.xml
copy phonegap.local.properties ..\mStore\phonegap.local.properties
copy config.xml ..\mStore\phonegap\config.xml
copy google-services.json ..\mStore\phonegap\www\google-services.json
copy google-services.json ..\mStore\phonegap\google-services.json
copy config.json ..\mStore\phonegap\.cordova\config.json
copy package.json ..\mStore\phonegap\package.json
copy ionic.config.json ..\mStore\phonegap\ionic.config.json
copy app-phonegap.json ..\mStore\app.json
copy index-phonegap.html ..\mStore\index.html

cd ..\mStore\
sencha app build native >build-native.txt

if not "%1"=="" cd %1
