#include "configaudio.h"

ConfigAudio::ConfigAudio(QObject *parent) : FileManipulation(parent)
{
    filePath = "/home/gianghandsome/esca/Embedded_Linux_Jetson_Nano/shared-file/recording.txt";
//    connect(this, &ConfigAudio::saveConfigSignal, this, &ConfigAudio::saveConfig);
    qDebug () << "ConfigAudio constructor done!";
}

void ConfigAudio::writeFile(const QString filePath, const QVector<QString> &data)
{
    QFile file(filePath);
    qInfo() << filePath;
    if (file.open(QIODevice::WriteOnly))
    {       
        QTextStream out(&file);
        for(int i = 0; i < data.size(); i++) {
            out << data[i] << "\n";
            qInfo() << "Writing lines" << i << data[i];
        }
        file.close();
    }
}

QVector<QString> ConfigAudio::readFile(const QString &filePath)
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

void ConfigAudio::setFilePath() {
    filePath = "/home/nguyen-hai-minh/BaseCodeESCA/Embedded_Linux_Jetson_Nano/recording.txt";
}

void ConfigAudio::saveConfig(const QVector<QString> &configValue)
{
    qInfo() << "Saving config from C++:" << configValue;
    writeFile(filePath, configValue);
}

QVector<QString> ConfigAudio::loadConfig()
{
    qInfo() << "Load config";
    QVector<QString> result = readFile(filePath);
    return result;
}

