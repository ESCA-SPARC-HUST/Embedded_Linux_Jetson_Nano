#ifndef AUDIOFEATURECONTROLLER_H
#define AUDIOFEATURECONTROLLER_H

#include <QObject>
#include <QFileSystemWatcher>
#include <QString>
#include <QDebug>
#include <QCoreApplication>
#include <QDir>
#include <QSet>

#include "config/featureaudioextractor.h"
#include "component/process/process.h"


class Process;


class AudioFeatureController : public QObject
{
    Q_OBJECT
public:
    explicit AudioFeatureController(QObject *parent = 0);
    // ~AudioFeatureController();

    void setDirectory(QString directoryPath);

    Q_INVOKABLE void extractMFCC(QString audioPath);

public slots:
    void directoryChanged(const QString &path);

signals:
    //    void newFileAdded(const QString &fileName);
    void setImageResult(const QString &imageName);

private:
    // FeatureAudioExtractor* m_audio_extractor = nullptr;
    Process* m_audio_extractor = nullptr;
    QFileSystemWatcher m_watcher;
    QString m_directory_result;
    QSet<QString> m_previousFiles;

    void updateFileList();
};

#endif // AUDIOFEATURECONTROLLER_H
