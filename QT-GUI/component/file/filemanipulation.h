#ifndef FILEMANIPULATION_H
#define FILEMANIPULATION_H

#include <QString>
#include <QFile>
#include <QTextStream>
#include <QDebug>


class FileManipulation : public QObject
{
public:
//        explicit FileManipulation();
//        virtual ~FileManipulation();
    virtual void setFilePath() = 0;
    QString getFilePath();

    virtual void writeFile(const QString filePath, const QString &data);
    virtual void readFile(const QString &filePath);

    QString filePath;

    //private:
    //    QString filePath;
};

#endif // FILEMANIPULATION_H
