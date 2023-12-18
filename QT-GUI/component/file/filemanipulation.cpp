#include "filemanipulation.h"


QString FileManipulation::getFilePath()
{
    return filePath;
}

void FileManipulation::writeFile()
{
    QFile file(filePath);
    if(file.open(QIODevice::ReadWrite)) {

        qInfo() << "Wrting lines";
        QTextStream stream(&file);
        QString line = "Hello Giang";
        for (int i = 0; i < 10; ++i) {
            stream << line  << "\n";
        }
        file.close();
    }
    else {
        qCritical() << file.errorString();
    }

}

void FileManipulation::readFile()
{
    qInfo() << "Reading lines";
    QFile file(filePath);
    int lines = 0;
    if(file.open(QIODevice::ReadWrite)) {

        qInfo() << "Wrting lines";
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
