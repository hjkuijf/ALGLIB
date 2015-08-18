# ALGLIB

This is ALGLIB 3.4.0, as downloaded from: http://www.alglib.net/ . This library was used for the work described in: http://dx.doi.org/10.1007/s12021-013-9215-0 .

A project profile is added for use in [MeVisLab](http://www.mevislab.de/). To add this library to the Sources of your MeVisLab package, please do the following:

1. Download these sources and place them in Your/Package/Sources/alglib
2. Add the following to Your/Package/Configuration/Your_Package.pri:

```
alglib {
  CONFIG_FOUND += alglib
  INCLUDEPATH += $${PACKAGE_SOURCES}/alglib/src
  win32:LIBS += alglib$${d}.lib
  unix:LIBS += -lalglib$${d}
}
```

To use the ALGLIB library in a MeVisLab C++ module, add the following to Your/Package/Projects/YourProject/Sources/YourProject.pro:

```
CONFIG += alglib
MLAB_PACKAGES += Your_Package
```

The latter (MLAB_PACKAGES) is only required if you place alglib in a different package than your project sources. For example, in a dedicated ThirdParty package.