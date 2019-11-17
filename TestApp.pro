QT += quick
CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    MainController.cpp \
    main.cpp

RESOURCES +=

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    forms/CustomDashboard.qml \
    forms/CustomDashboard.qml \
    forms/Dashboard.qml \
    forms/DashboardForm.ui.qml \
    forms/form/Dashboard.qml \
    forms/form/DashboardForm.ui.qml \
    forms/main.qml \
    forms/style/DapWMS_Button.qml \
    forms/style/DapWMS_Message.qml

CONFIG(release, debug|release): DESTDIR = $$OUT_PWD/release
CONFIG(debug, debug|release): DESTDIR = $$OUT_PWD/debug

copy_to_build.path = $$DESTDIR/forms
copy_to_build.files = forms/*

INSTALLS += \
    copy_to_build

HEADERS += \
    AppModules.h \
    MainController.h
