#ifndef AUDIOCONFIGFILE_H
#define AUDIOCONFIGFILE_H

#include "component/file/filemanipulation.h"

#include "config/audioconfig.h"

class AudioConfigFile : public FileManipulation
{
public:
    AudioConfigFile(QObject *parent = nullptr);
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


#endif // AUDIOCONFIGFILE_H
