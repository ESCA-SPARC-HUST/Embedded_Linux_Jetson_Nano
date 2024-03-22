#include "audiofeaturecontroller.h"


AudioFeatureController::AudioFeatureController(QObject *parent) : QObject{parent}
{
    m_watcher.addPath(QString(PYTHON_AUDIO_EXTRACT_RESULT));
    setDirectory(QString(PYTHON_AUDIO_EXTRACT_RESULT));

    // Initial file list
    updateFileList();

    connect(&m_watcher, &QFileSystemWatcher::directoryChanged, this, &AudioFeatureController::directoryChanged);
    m_audio_extractor = new Process();
}

void AudioFeatureController::setDirectory(QString directoryPath)
{
    m_directory_result = directoryPath;
}

void AudioFeatureController::directoryChanged(const QString &path)
{
    Q_UNUSED(path);

    // Check for new files
    updateFileList();

}

void AudioFeatureController::updateFileList()
{
    QDir directory(m_directory_result);
    QStringList currentFiles = directory.entryList(QDir::Files);
    qDebug() << "m_directoryPath:" << m_directory_result;
    qDebug() << "currentFiles" << currentFiles;


    // Compare the current files with the previous files and subtract duplicated file
    QStringList newFiles = currentFiles.toSet().subtract(m_previousFiles).toList();

    for (const QString &newFile : newFiles) {
        qDebug() << "New file added:" << newFile;
        //        emit newFileAdded(newFile);
    }

    qDebug() << "New image set:" << currentFiles.last();
    emit setImageResult(currentFiles[currentFiles.length()-1]);

    // Update the previous files
    m_previousFiles = currentFiles.toSet();

}

void AudioFeatureController::extractMFCC(QString audioPath)
{
    qInfo() << "Hello Giang Dep trai " << audioPath;
    QString statement ="cd /home/gianghandsome/IoT-AnomallySoundDetection/D-ESCA_v2/ \n python3 tools/base_training.py -cfg ./config/params.yaml";
    m_audio_extractor->setStatement(statement);
    m_audio_extractor->start();
}

void AudioFeatureController::splitAudio(QString source, QString destination, QString duration)
{
    QString statement ="cd /home/gianghandsome/training/D-ESCA_v2 \n python3 helper/split_audio_qt.py -s ";
    statement.append(source);
    statement.append(" -d ");
    statement.append(destination);
    statement.append(" -du ");
    statement.append(duration);
    qInfo() << statement;
    m_audio_extractor->setStatement(statement);
    m_audio_extractor->start();
}
