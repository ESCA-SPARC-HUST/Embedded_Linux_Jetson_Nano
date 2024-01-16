#ifndef FILEWATCHER_H
#define FILEWATCHER_H

#include <QCoreApplication>
#include <QFileSystemWatcher>
#include <QDebug>
#include <QDir>
#include <QSet>

class FileWatcher : public QObject
{
    Q_OBJECT

public:
    explicit FileWatcher(const QString &directoryPath, QObject *parent = nullptr);
    ~FileWatcher();

    void setDirectory(QString directoryPath);

public slots:
    void directoryChanged(const QString &path);

private:
    void updateFileList();

signals:
//    void newFileAdded(const QString &fileName);
    void setImage(const QString &imageName);

private:
    QFileSystemWatcher m_watcher;
    QString m_directoryPath;
    QSet<QString> m_previousFiles;
};

#endif
