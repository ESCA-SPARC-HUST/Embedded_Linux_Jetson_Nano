#include "configaudio.h"

ConfigAudio::ConfigAudio() : FileManipulation()
{
    filePath = "/home/nguyen-hai-minh/BaseCodeESCA/Embedded_Linux_Jetson_Nano/recording.txt";
}


void ConfigAudio::writeFile(const QString filePath, const QString &data)
{
    QFile file(filePath);
    if (file.open(QIODevice::WriteOnly))
    {
        QTextStream out(&file);
        out << data << "/n";
        qInfo() << "Writing lines";
        file.close();
    }
}

void ConfigAudio::readFile(const QString &filePath)
{
    qInfo() << "Reading lines";
    QFile file(filePath);

    if (file.open(QIODevice::ReadOnly))
    {
        QTextStream in(&file);
        in.seek(0);
        QString line;
        QString content;
        int lines = 0;

        while (in.readLineInto(&line))
        {
            // Do something with line
            content += line;
            lines++;
        }

        qInfo() << "line read: " << line;

//        QString content = in.readAll();
        // sửa ko readAll nữa
        file.close();
    }
}

void ConfigAudio::saveConfig(const QString &configValue)
{
    qInfo() << "Saving config";
    qInfo() << configValue;
    writeFile(filePath, configValue);
}

QVector<QString> ConfigAudio::configvalue() const
{
    return m_configvalue;
}

void ConfigAudio::setconfigvalue(const QVector<QString> &newConfigvalue)
{
    if (m_configvalue == newConfigvalue)
        return;
    m_configvalue = newConfigvalue;
}
