#include "filemanipulation.h"

//FileManipulation::FileManipulation()
//{

//}


QString FileManipulation::getFilePath()
{
    return filePath;
}

void FileManipulation::writeFile(const QString filePath, const QString &data)
{
    QFile file(filePath);
    if(file.open(QIODevice::WriteOnly)) {

        QTextStream stream(&file);
        for (int i = 0; i < 10; ++i) {
            stream << data  << "\n";
        }
        qInfo() << "Writing lines";
        file.close();
    }
    else {
        qCritical() << file.errorString();
    }
}


void FileManipulation::readFile(const QString &filePath)
{
    qInfo() << "Reading lines";
    QFile file(filePath);
    int lines = 0;
    if(file.open(QIODevice::ReadOnly)) {

        qInfo() << "Writing lines";
        QTextStream stream(&file);
        //        while(stream.readLineInto(&file)) {
        //        lines++;
        //        }
        file.close();
    }
    else {
        qCritical() << file.errorString();
    }

}
