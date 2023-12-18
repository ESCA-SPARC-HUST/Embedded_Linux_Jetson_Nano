#include "filewatcher.h"

FileWatcher::FileWatcher(const QString &directoryPath, QObject *parent)
    : QObject(parent)
{
    m_watcher.addPath(directoryPath);

    setDirectory(directoryPath);

    // Initial file list
    updateFileList();

    connect(&m_watcher, &QFileSystemWatcher::directoryChanged, this, &FileWatcher::directoryChanged);
//    connect();
}

FileWatcher::~FileWatcher()
{

}

void FileWatcher::directoryChanged(const QString &path)
{
    Q_UNUSED(path);

    // Check for new files
    updateFileList();

}

void FileWatcher::updateFileList()
{
    QDir directory(m_directoryPath);
    QStringList currentFiles = directory.entryList(QDir::Files);
    qDebug() << "m_directoryPath:" << m_directoryPath;
    qDebug() << "currentFiles" << currentFiles;


    // Compare the current files with the previous files and subtract duplicated file
    QStringList newFiles = currentFiles.toSet().subtract(m_previousFiles).toList();

    for (const QString &newFile : newFiles) {
        qDebug() << "New file added:" << newFile;
//        emit newFileAdded(newFile);
    }

    qDebug() << "New image set:" << currentFiles.last();
    emit setImage(currentFiles[currentFiles.length()-1]);

    // Update the previous files
    m_previousFiles = currentFiles.toSet();
}

void FileWatcher::setDirectory(QString directoryPath)
{
    m_directoryPath = directoryPath;
}

