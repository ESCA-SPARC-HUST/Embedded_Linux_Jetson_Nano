#include "basetraining.h"


BaseTraining::BaseTraining(QObject *parent)
{
    // m_watcher.addPath(QString(PYTHON_BASE_TRAINING_RESULT));
    // setDirectory(QString(PYTHON_BASE_TRAINING_RESULT));

    // // Initial file list
    // updateFileList();

    // connect(&m_watcher, &QFileSystemWatcher::directoryChanged, this, &BaseTraining::directoryChanged);
    // m_base_training = new Process();
}

void BaseTraining::setDirectory(QString directoryPath)
{
    m_directory_result = directoryPath;
}

void BaseTraining::directoryChanged(const QString &path)
{
    Q_UNUSED(path);

    // Check for new files
    updateFileList();

}

void BaseTraining::updateFileList()
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

void BaseTraining::execution(QString audioPath)
{
    m_base_training = new Process();
    // m_watcher = new QFileSystemWatcher();
    // m_watcher.addPath(QString(PYTHON_BASE_TRAINING_RESULT));
    // setDirectory(QString(PYTHON_BASE_TRAINING_RESULT));
    // // Initial file list
    // updateFileList();
    // connect(&m_watcher, &QFileSystemWatcher::directoryChanged, this, &BaseTraining::directoryChanged);
    qInfo() << "Hello Giang Dep trai " << audioPath;
    // QString statement ="cd /home/sparc/giang/IoT-AnomallySoundDetection/D-ESCA_v2 \n python3 tools/base_training.py -cfg ./config/params.yaml";
    QString statement ="cd /home/gianghandsome/training/D-ESCA_v2 \n python3 tools/base_training.py -cfg ./config/params.yaml";
    m_base_training->setStatement(statement);
    m_base_training->start();
}

void BaseTraining::inference(QString datasource, QString model)
{
    // m_delete = new Process();
    // QString deleteStatement = "cd /home/sparc/ESCA/realtime_result \n rm temp.csv";
    // m_delete->setStatement(deleteStatement);
    // m_delete->start();



    m_base_training = new Process();
    // m_watcher = new QFileSystemWatcher();
    // m_watcher.addPath(QString(PYTHON_BASE_TRAINING_RESULT));
    // setDirectory(QString(PYTHON_BASE_TRAINING_RESULT));
    // // Initial file list
    // updateFileList();
    // connect(&m_watcher, &QFileSystemWatcher::directoryChanged, this, &BaseTraining::directoryChanged);

    qInfo() << "Inference " << datasource << model;
    QString statement ="cd /home/sparc/giang/IoT-AnomallySoundDetection/D-ESCA_v2 \n python3 tools/rt_test.py -cfg ./config/params.yaml -f ";
    statement.append(datasource);
    m_base_training->setStatement(statement);
    m_base_training->start();
}

void BaseTraining::showChart()
{
    m_show_chart = new Process();
    QString statement ="cd /home/sparc/giang/IoT-AnomallySoundDetection/D-ESCA_v2 \n python3 helper/plotting_graph.py -th 0.00044163066195324063 -csv /home/sparc/ESCA/realtime_result/temp1.csv";

    qInfo() << statement;
    m_show_chart->setStatement(statement);
    m_show_chart->start();
}
