#ifndef INFERENCEFILE_H
#define INFERENCEFILE_H

#include "component/file/filemanipulation.h"

// #include "config/audioconfig.h"

class InferenceFile : public FileManipulation
{
public:
    InferenceFile(QObject *parent = nullptr);
    void writeFile(const QString filePath, const QVector<QString> &data) override;
    QVector<QString> readFile(const QString &filePath) override;
    void setFilePath() override;



public slots:
    void saveConfig(const QVector<QString> &configValue);
    QVector<QString> loadConfig();


signals:
    void saveConfigSignal(const QString &configValue);

private:
    QVector<QString> m_configvalue;



};

#endif // INFERENCEFILE_H
