#ifndef FILEMANAGER_H
#define FILEMANAGER_H

#include <QObject>
#include <QStringList>
#include <QVariant>
#include <QJsonArray>
#include <QJsonObject>
#include <QDir>
#include <QJsonValue>

class FileManager : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString folder READ folder WRITE setFolder NOTIFY folderChanged)
    Q_PROPERTY(QVariantList fileList READ fileList NOTIFY fileListChanged)


public:
    explicit FileManager(QObject *parent = nullptr);

    QVariantList fileList() const;
    QString folder() const;
    void setFolder(const QString &folder);


signals:
    void folderChanged();
    void fileListChanged();

private:
    void updateFileList();

private:
    QString m_folder;
    QVariantList m_fileList;

};

#endif // FILEMANAGER_H

