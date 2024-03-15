#ifndef SOCKET_H
#define SOCKET_H

#include <QObject>
#include <QTcpSocket>
#include <QString>

#include "config/socketconfig.h"
#include "config/audioconfig.h"

class  Socket : public QObject
{
    Q_OBJECT
public:
    explicit Socket(QObject* parent = 0);
    void sendData(QString str);



       void startAduioRecording();
       void endAudioRecording();
    //    void editAudioParameters();
    //    void setaudioParameters();

signals:


public slots:

private:
    QTcpSocket* connection;
};

#endif // SOCKET_H
