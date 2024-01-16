#include "settimer.h"

SetTimer::SetTimer(QObject *parent) : FileManipulation(parent)
{
    filePath = "/home/nguyen-hai-minh/BaseCodeESCA/Embedded_Linux_Jetson_Nano/shared-file/setTimer.txt";
    qDebug () << "SetTimer constructor done!";
}

void SetTimer::writeFile(const QString filePath, const QVector<QString> &data)
{
    QFile file(filePath);
    if (file.open(QIODevice::Append))
    {
        QTextStream out(&file);
        out << data[0] << "-" << data[1] << "\n";
        qInfo() << "Writing lines" << data[0] << "-" << data[1];
        file.close();
    }
}

QVector<QString> SetTimer::readFile(const QString &filePath)
{
    QFile file(filePath);
    QVector<QString> data;

    if (file.open(QIODevice::ReadOnly))
    {
        QTextStream in(&file);
        in.seek(0);
        QString line;
        int lines = 0;
        while (in.readLineInto(&line))
        {
            qInfo() << "line read: " << line;
            data += line;
            lines++;
        }
        qInfo() << "line read: " << line;
        //        QString content = in.readAll();
        return data;
        file.close();
    }
}

void SetTimer::setFilePath()
{
    filePath = "/home/nguyen-hai-minh/BaseCodeESCA/Embedded_Linux_Jetson_Nano/setTimer.txt";
}

void SetTimer::saveTimer(const QVector<QString> &configValue)
{
    qInfo() << "Saving set timer from C++:" << configValue;
    writeFile(filePath, configValue);
}

QVector<QString> SetTimer::loadTimer()
{
    qInfo() << "Load timer";
    QVector<QString> result = readFile(filePath);
    return result;
}
