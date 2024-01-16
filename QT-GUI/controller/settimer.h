#ifndef SETTIMER_H
#define SETTIMER_H

#include <QObject>
#include "component/file/filemanipulation.h"

class SetTimer : public FileManipulation
{
    Q_OBJECT
public:
    SetTimer(QObject *parent = nullptr);
    void writeFile(const QString filePath, const QVector<QString> &data) override;
    QVector<QString> readFile(const QString &filePath) override;
    void setFilePath() override;


public slots:
    Q_INVOKABLE void saveTimer(const QVector<QString> &configValue);
    Q_INVOKABLE QVector<QString> loadTimer();

};

#endif // SETTIMER_H
