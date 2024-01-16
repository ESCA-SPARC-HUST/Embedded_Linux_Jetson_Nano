QT = core
QT += quick
QT += qml
QT += multimedia
QT += widgets
QT += network

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        component/chart/audiochart.cpp \
        component/file/filemanipulation.cpp \
        component/process/process.cpp \
        component/socket/socket.cpp \
        controller/audiocontroller.cpp \
        controller/audiofeaturecontroller.cpp \
        controller/basetraining.cpp \
        controller/configaudio.cpp \
        controller/monitorbackend.cpp \
        core/audio/audioconfigfile.cpp \
        core/audio/audioengine.cpp \
        core/audio/audiofile.cpp \
        core/filewatcher.cpp \
        main.cpp

RESOURCES += qml.qrc \


# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH = ./ui/component

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    component/chart/audiochart.h \
    component/file/filemanipulation.h \
    component/process/process.h \
    component/socket/socket.h \
    config/audioconfig.h \
    config/basetraining.h \
    config/featureaudioextractor.h \
    config/socketconfig.h \
    config/fileconfig.h \
    controller/audiocontroller.h \
    controller/audiofeaturecontroller.h \
    controller/basetraining.h \
    controller/configaudio.h \
    controller/monitorbackend.h \
    core/audio/audioconfigfile.h \
    core/audio/audiofile.h \
    core/audiochart.h \
    core/audio/audioengine.h \
    core/filewatcher.h

DISTFILES += \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Components/ArcArrow.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Components/ArcItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Components/BorderItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Components/FlipableItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Components/GroupItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Components/IsoItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Components/PieItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Components/RectangleItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Components/StraightArrow.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Components/SvgPathItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Components/TriangleItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Components/plugins.qmltypes \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Components/qmldir \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/BlendEffect.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/BlendItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/BrightnessContrastEffect.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/BrightnessContrastItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/ColorOverlayEffect.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/ColorOverlayItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/ColorizeEffect.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/ColorizeItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/DesaturationEffect.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/DesaturationItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/DirectionalBlurEffect.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/DirectionalBlurItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/DisplaceEffect.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/DisplaceItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/DropShadowEffect.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/DropShadowItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/FastBlurEffect.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/FastBlurItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/GammaAdjustEffect.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/GammaAdjustItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/GaussianBlurEffect.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/GaussianBlurItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/GlowEffect.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/GlowItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/HueSaturationEffect.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/HueSaturationItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/InnerShadowEffect.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/InnerShadowItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/LevelAdjustEffect.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/LevelAdjustItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/MaskItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/MaskedBlurEffect.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/MaskedBlurItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/OpacityMaskEffect.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/OpacityMaskItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/RadialBlurEffect.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/RadialBlurItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/RecursiveBlurEffect.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/RecursiveBlurItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/RotationItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/SaturationItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/ThresholdMaskEffect.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/ThresholdMaskItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/ZoomBlurEffect.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/ZoomBlurItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/plugins.qmltypes \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/Effects/qmldir \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/EventSimulator/EventSimulator.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/EventSimulator/EventSimulatorDelegate.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/EventSimulator/plugins.qmltypes \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/EventSimulator/qmldir \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/EventSystem/EventListener.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/EventSystem/EventSystem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/EventSystem/plugins.qmltypes \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/EventSystem/qmldir \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/LogicHelper/AndOperator.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/LogicHelper/BidirectionalBinding.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/LogicHelper/MinMaxMapper.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/LogicHelper/NotOperator.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/LogicHelper/OrOperator.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/LogicHelper/RangeMapper.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/LogicHelper/StringMapper.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/LogicHelper/plugins.qmltypes \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/LogicHelper/qmldir \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/MultiText/MultiTextElement.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/MultiText/MultiTextException.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/MultiText/MultiTextItem.qml \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/MultiText/plugins.qmltypes \
    ../../../tessnewDESC/UI-D-ESCA-3/UI/cppImports/QtQuick/Studio/MultiText/qmldir \

