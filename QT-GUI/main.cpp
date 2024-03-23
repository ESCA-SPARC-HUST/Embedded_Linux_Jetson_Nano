//#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlEngine>
#include <QQmlContext>
#include <QtWidgets/QApplication>

#include "controller/audiocontroller.h"
#include "controller/monitorbackend.h"
#include "component/chart/audiochart.h"
#include "core/filemanager.h"
#include "core/audio/audioengine.h"


int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    //    QGuiApplication app(argc, argv);
    QApplication app(argc, argv);

    app.setOrganizationName("D-ESCA3");
    app.setOrganizationDomain("sparc.com");
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
    AudioEngine* audioEngine;
    FileManager fileManager;

    //----------------------------
    //  To Qml FileManager
    //----------------------------
    //    engine.rootContext()->setContextProperty("fileManager", &fileManager);
    qmlRegisterType<FileManager>("FileManagerIm", 1, 0, "FileManager");


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

    //----------------------------
    //  Connect to audio file list
    //----------------------------
    QObject::connect(audioController->m_audio, &AudioEngine::inputDeviceSig, [&](const QVector<QString>& newBuffer) {
        // Dữ liệu trong buffer đã được cập nhật
        engine.rootContext()->setContextProperty("audioDeviceList", QVariant::fromValue(newBuffer));

    });

    return app.exec();
}
