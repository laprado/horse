## Introduction

This sample project tests the libmicrohttpd provider for FPC. It is an alternative provider for FPC capable of delivering better performance than the native implementation of FPC 3.2.2 (FPHttpApplication).

### Dependencies

This provider depends on libmicrohttpd being installed on Linux:
```console
apt-get update && apt-get install -y libmicrohttpd-dev
```

For Windows, it is necessary to copy the libmicrohttpd-10.dll to the same directory as the executable, you can download it from this link: https://www.gnu.org/software/libmicrohttpd/#download

Unzip the archive libmicrohttpd-latest-w32-bin.zip, look for the desired libmicrohttpd-{1x}.dll, consider the bitness under which your application is being compiled. If necessary, rename the file to libmicrohttpd-10.dll so that the executable finds it.

### Changes to the project to work

Add a DEFINE in the compiler options section of the lazarus project options: HORSE_MICROHTTP, so the project will be compiled with the -dHORSE_MICROHTTP flag, causing Horse to choose the Horse.Provider.FPC.MicroHTTPApplication.pas.

### Deployment

For Linux you should use libmicrohttpd12 instead of libmicrohttpd-dev. For Windows, consider using the same .dll described in the dependencies section above.