#ifndef RESULTCONTROLLER_H
#define RESULTCONTROLLER_H

#include <QObject>
#include <QString>




class ResultController : public QObject
{
    Q_OBJECT
public:
    // explicit ResultController(QObject *parent = nullptr);
    // ~ResultController();


    Q_INVOKABLE void selectLossResult(QString result);
    Q_INVOKABLE void selectPRResult(QString result);
    Q_INVOKABLE void selectROCResult(QString result);
    Q_INVOKABLE void selectMonitorResult(QString result);
signals:
    //    void newFileAdded(const QString &fileName);
    void setLossImage(QString imageName);
    void setROCImage(QString imageName);
    void setPRImage(QString imageName);
    void setMonitorImage(QString imageName);


private:
    QString m_directoryPath;
    // QSet<QString> m_previousFiles;
};

#endif // RESULTCONTROLLER_H
