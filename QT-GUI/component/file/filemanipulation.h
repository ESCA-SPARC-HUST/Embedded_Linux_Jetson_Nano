#ifndef FILEMANIPULATION_H
#define FILEMANIPULATION_H

#include <QString>
#include <QFile>
#include <QTextStream>
#include <QDebug>


class FileManipulation
{
public:
    //    explicit FileManipulation(QObject* parent = 0);
    //    virtual ~FileManipulation();
    virtual void setFilePath() = 0;
    QString getFilePath();
    void writeFile();
    void readFile();

    QString filePath;



    //private:
    //    QString filePath;
};

#endif // FILEMANIPULATION_H
