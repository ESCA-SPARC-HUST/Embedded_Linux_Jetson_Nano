#include "resultcontroller.h"
#include <QDebug>


// ResultController::ResultController(QObject *parent)
//     : QObject(parent)
// {

// }

void ResultController::selectLossResult(QString result)
{
    qInfo() << result;
    QString filePath = result.append("/loss.jpg");
    emit setLossImage(filePath);
}

void ResultController::selectPRResult(QString result)
{
    qInfo() << result;
    QString filePath = result.append("/pr.jpg");
    emit setPRImage(filePath);
}

void ResultController::selectROCResult(QString result)
{
    qInfo() << result;
    QString filePath = result.append("/roc.jpg");
    emit setROCImage(filePath);
}

void ResultController::selectMonitorResult(QString result)
{
    qInfo() << result;
    QString filePath = result.append("/figure.png");
    emit setMonitorImage(filePath);
}
