#ifndef CONFIGAUDIO_H
#define CONFIGAUDIO_H

#include "component/file/filemanipulation.h"

class ConfigAudio : public FileManipulation
{
    Q_OBJECT
    Q_PROPERTY(QVector<QString> configvalue READ configvalue WRITE setconfigvalue NOTIFY configvalueChanged FINAL)

public:
    explicit ConfigAudio();
    void writeFile(const QString filePath, const QString &data) override;
    void readFile(const QString &filePath) override;

    QVector<QString> configvalue() const;
    void setconfigvalue(const QVector<QString> &newConfigvalue);

public slots:
    void saveConfig(const QString &configValue);
//    void loadConfig();


signals:
    void configvalueChanged();

private:
    QVector<QString> m_configvalue;
};

#endif // CONFIGAUDIO_H
