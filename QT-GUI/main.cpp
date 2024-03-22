//#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlEngine>
#include <QQmlContext>
#include <QtWidgets/QApplication>
#include <QFileSystemWatcher>
#include <QWidget>
#include <QDebug>

#include "controller/audiocontroller.h"
#include "controller/monitorbackend.h"
#include "controller/audiofeaturecontroller.h"
#include "controller/basetraining.h"



#include "component/chart/audiochart.h"
#include "component/chart/losschart.h"


#include "core/filewatcher.h"
#include "core/audio/audioengine.h"
#include "controller/configaudio.h"




int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    //    QGuiApplication app(argc, argv);
    QApplication app(argc, argv);

    app.setOrganizationName("D-ESCA3");
    app.setOrganizationDomain("sparc.hust.edu.com");
    app.setApplicationName("D-ESCA3");

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/ui/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
        &app, [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        }, Qt::QueuedConnection);
    engine.load(url);

    AudioController* audioController = new AudioController();
    MonitorBackend* minitorBackend = new MonitorBackend();
    AudioFeatureController* audioExtractor = new AudioFeatureController();
    BaseTraining* baseTrainingController = new BaseTraining();


    AudioEngine* audioEngine;
    // FileWatcher fileWatcher("/opt/QT-GUI/bin");
    // fileWatcher.setDirectory("/opt/QT-GUI/bin");

    ConfigAudio *configAudio = new ConfigAudio();
    engine.rootContext()->setContextProperty("ConfigAudio", configAudio);
    qmlRegisterType<ConfigAudio>("ConfigAudio", 1, 0, "ConfigAudio");


    //    QObject::connect(imageWatcher.fileWatcher, &QFileSystemWatcher::fileChanged, imageWatcher.fileWatcher, &ImageWatcher::handleFileChanged);
    // engine.rootContext()->setContextProperty("fileWatcher", &fileWatcher);


    //---------------------------
    //  Connect to Audio
    //---------------------------
    QObject::connect(audioController->m_audiochart, &AudioChart::bufferUpdated, [&](const QVector<float>& newBuffer) {
        // Dữ liệu trong buffer đã được cập nhật
        //bufferData = newBuffer;
        audioController->setbufferData(newBuffer);
        QQmlEngine::setObjectOwnership(audioController, QQmlEngine::CppOwnership);
        engine.rootContext()->setContextProperty("audioDataFromCpp", QVariant::fromValue(newBuffer));
    });

    //----------------------------
    //  Connect to Cpu file
    //----------------------------
    engine.rootContext()->setContextProperty("BackendObject", minitorBackend);

    // control audiocontroller
    engine.rootContext()->setContextProperty("AudioObject", audioController);


    engine.rootContext()->setContextProperty("FeatureAudioExtractor", audioExtractor);

    engine.rootContext()->setContextProperty("BaseTraining", baseTrainingController);

    // LossCharts* losschart = new LossCharts();
    // QObject::connect(losschart, &LossCharts::totalLossChanged, [&](const QVector<float>& newBuffer) {
    //     // Dữ liệu trong buffer đã được cập nhật
    //     //bufferData = newBuffer;
    //     // audioController->setbufferData(newBuffer);
    //     QQmlEngine::setObjectOwnership(losschart, QQmlEngine::CppOwnership);
    //     engine.rootContext()->setContextProperty("LossFromCpp", QVariant::fromValue(newBuffer));
    // });




    //----------------------------
    //  Connect to audio file listnewBuffer
    //----------------------------
    QObject::connect(audioController->m_audio, &AudioEngine::inputDeviceSig, [&](const QVector<QString>& newBuffer) {
        // Dữ liệu trong buffer đã được cập nhật
        engine.rootContext()->setContextProperty("audioDeviceList", QVariant::fromValue(newBuffer));

    });

//    imageWatcher.setWatchedFolder("/home/nguyen-hai-minh/BaseCodeESCA/Embedded_Linux_Jetson_Nano/QT-GUI/images");


    return app.exec();
}
