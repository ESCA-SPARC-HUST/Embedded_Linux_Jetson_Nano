#include "filemanager.h"
#include <QDir>
#include <QFileInfo>
#include <QJsonObject>
#include <QJsonArray>
#include <QJsonValue>



FileManager::FileManager(QObject *parent) : QObject(parent)
{
    setFolder(QDir::homePath());
    qDebug() << "FileManager" << QDir::homePath();
    updateFileList();
}

QString FileManager::folder() const
{
    return m_folder;
}

void FileManager::setFolder(const QString &folder)
{
    if (m_folder == folder)
        return;

    m_folder = folder;
    updateFileList();
    emit folderChanged();
}

QVariantList FileManager::fileList() const
{
    return m_fileList;
}

void FileManager::updateFileList()
{
    m_fileList.clear();

    QDir dir(m_folder);
    QFileInfoList fileInfoList = dir.entryInfoList();

    for (const QFileInfo &fileInfo : fileInfoList) {
        QVariantMap fileMap;
        fileMap["fileName"] = fileInfo.fileName();
        fileMap["filePath"] = fileInfo.filePath();
        fileMap["isDir"] = fileInfo.isDir();

        m_fileList.append(fileMap);
    }
//        qDebug() << "M File List" << m_fileList[0];

    emit fileListChanged();
}

