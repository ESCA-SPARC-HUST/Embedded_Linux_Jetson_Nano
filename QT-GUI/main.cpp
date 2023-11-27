//#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlEngine>
#include <QQmlContext>
#include <QQuickView>
#include <QtWidgets/QApplication>

#include "controller/audiocontroller.h"
#include "controller/monitorbackend.h"



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

    qmlRegisterSingletonType<MonitorBackend>(
        "backend", 1, 0, "BackendObject",
        [](QQmlEngine *, QJSEngine *) { return new MonitorBackend; });

    QQuickView view;
    view.engine()->addImportPath("qrc:/UI/imports");
    view.engine()->addImportPath("qrc:/UI/libs");
    view.setSource(QUrl("qrc:/UI/contents/Monitor_screen.qml"));
    if (!view.errors().isEmpty())
        return -1;
    view.show();

//    AudioController* audioController = new AudioController();
//    QVector<float> bufferData;
//    QObject::connect(audioController->m_audiochart, &AudioChart::bufferUpdated, [&](const QVector<float>& newBuffer) {
//        bufferData = newBuffer;
//        audioController->setbufferData(bufferData);

//        QQmlEngine::setObjectOwnership(audioController, QQmlEngine::CppOwnership);
//        engine.rootContext()->setContextProperty("audioDataFromCpp", QVariant::fromValue(newBuffer));
//    });
    return app.exec();
}
