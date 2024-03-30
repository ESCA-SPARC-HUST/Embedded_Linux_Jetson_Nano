#ifndef BASETRAINING_H
#define BASETRAINING_H

#include <QObject>
#include <QFileSystemWatcher>
#include <QString>
#include <QDebug>
#include <QCoreApplication>
#include <QDir>
#include <QSet>

#include "config/basetraining.h"

#include "component/process/process.h"

class BaseTraining : public QObject
{
    Q_OBJECT
public:
    explicit BaseTraining(QObject *parent = 0);

    void setDirectory(QString directoryPath);

    Q_INVOKABLE void execution(QString audioPath);

    Q_INVOKABLE void inference(QString datasource, QString model);


    Q_INVOKABLE void showChart();

public slots:
    void directoryChanged(const QString &path);

signals:
    //    void newFileAdded(const QString &fileName);
    void setImageResult(const QString &imageName);

private:
    // FeatureAudioExtractor* m_audio_extractor = nullptr;
    Process* m_base_training = nullptr;
    Process* m_show_chart = nullptr;
    Process* m_delete = nullptr;
    QFileSystemWatcher* m_watcher = nullptr;
    QString m_directory_result;
    QSet<QString> m_previousFiles;

    void updateFileList();
};


#endif // BASETRAINING_H
