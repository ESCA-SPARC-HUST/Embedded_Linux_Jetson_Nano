#ifndef CONFIGAUDIO_H
#define CONFIGAUDIO_H

#include "component/file/filemanipulation.h"

class ConfigAudio : public FileManipulation
{
    Q_OBJECT

public:
    ConfigAudio(QObject *parent = nullptr);
    void writeFile(const QString filePath, const QVector<QString> &data) override;
    QVector<QString> readFile(const QString &filePath) override;

    void setFilePath() override;

public slots:
    Q_INVOKABLE void saveConfig(const QVector<QString> &configValue);
    Q_INVOKABLE QVector<QString> loadConfig();


signals:
//    void saveConfigSignal(const QString &configValue);

private:
//    QVector<QString> m_configvalue;
};

#endif // CONFIGAUDIO_H
