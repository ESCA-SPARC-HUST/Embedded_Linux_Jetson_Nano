//#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlEngine>
#include <QQmlContext>
#include <QtWidgets/QApplication>
#include "controller/audiocontroller.h"
#include "component/chart/audiochart.h"


int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
//    QGuiApplication app(argc, argv);
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
        &app, [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        }, Qt::QueuedConnection);
    engine.load(url);

    AudioController* audioController = new AudioController();
    QVector<float> bufferData;
    QObject::connect(audioController->m_audiochart, &AudioChart::bufferUpdated, [&](const QVector<float>& newBuffer) {
        // Dữ liệu trong m_buffer đã được cập nhật

        bufferData = newBuffer;
        audioController->setbufferData(bufferData);

        QQmlEngine::setObjectOwnership(audioController, QQmlEngine::CppOwnership);
        engine.rootContext()->setContextProperty("audioDataFromCpp", QVariant::fromValue(newBuffer));
    });
    return app.exec();
}
