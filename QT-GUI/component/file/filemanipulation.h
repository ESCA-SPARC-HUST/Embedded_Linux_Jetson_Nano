#ifndef FILEMANIPULATION_H
#define FILEMANIPULATION_H

#include <QString>
#include <QFile>
#include <QTextStream>
#include <QDebug>


class FileManipulation : public QObject
{
    Q_OBJECT

public:
    explicit FileManipulation(QObject *parent = nullptr);
    //        virtual ~FileManipulation();
    virtual void setFilePath() = 0;
    QString getFilePath();

    virtual void writeFile(const QString filePath, const QVector<QString> &configValue)=0;
    virtual QVector<QString> readFile(const QString &filePath)=0;

    QString filePath;

    //private:
    //    QString filePath;
};

#endif // FILEMANIPULATION_H
