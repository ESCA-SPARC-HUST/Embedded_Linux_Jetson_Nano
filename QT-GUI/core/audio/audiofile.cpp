#include "audiofile.h"


void AudioFile::setFilePath()
{
    filePath = RECORDING_FILE_PATH;
    qInfo() << filePath;
}

void AudioFile::writeFile(const QString filePath, const QVector<QString> &data)
{

    QFile file(filePath);
    if(file.open(QIODevice::WriteOnly)) {

        QTextStream stream(&file);
        for (int i = 0; i < 10; ++i) {
            stream << data[i]  << "\n";
        }
        qInfo() << "Writing lines";
        file.close();
    }
    else {
        qCritical() << file.errorString();
    }

}

QVector<QString> AudioFile::readFile(const QString &filePath)
{
    qInfo() << "Reading lines";
    QFile file(filePath);
    int lines = 0;
    if(file.open(QIODevice::ReadOnly)) {

        QTextStream stream(&file);
//                while(stream.readLineInto(&file)) {
//                lines++;
//                }
        file.close();
    }
    else {
        qCritical() << file.errorString();
    }

}
