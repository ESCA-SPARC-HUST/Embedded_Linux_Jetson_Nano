QT += quick
QT += qml
QT += multimedia
QT += widgets

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        component/chart/audiochart.cpp \
        controller/audiocontroller.cpp \
        controller/monitorbackend.cpp \
        core/audioengine.cpp \
        main.cpp

RESOURCES += qml.qrc
RESOURCES += \
    $$files(UI/*)

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH = UI/imports
QML_IMPORT_PATH = UI/libs

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    UI/assets/bluetooth-icon.png \
    UI/assets/robot.png \
    UI/assets/setting-icon.png \
    UI/assets/wifi-icon.png \
    UI/content/ConnectionPort.qml \
    UI/content/InternetStatus.qml \
    UI/content/RunningTime.qml \
    UI/content/UsageTextElement.qml

HEADERS += \
    component/chart/audiochart.h \
    config/config.h \
    controller/audiocontroller.h \
    controller/monitorbackend.h \
    core/audiochart.h \
    core/audioengine.h
