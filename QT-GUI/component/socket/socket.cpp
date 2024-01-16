#include "socket.h"

Socket::Socket(QObject* parent) : QObject{parent}
{

}

void Socket::sendData(QString str)
{
    connection = new QTcpSocket(this);
    connection->connectToHost(SOCKET_SERVER, PORT);

    if(connection->waitForConnected(TIMEOUT)) {
//        connection->write(&str);
        qDebug() << "send data sucessfuly!";
        connection->close();
    }
    else {
        qDebug() << "Fail send data";
    }
}

//void Socket::startAduioRecording()
//{
//    connection = new QTcpSocket(this);
//    connection->connectToHost(SOCKET_SERVER, PORT);

//    if(connection->waitForConnected(TIMEOUT)) {
//        connection->write(START_RECORDING);
//        qDebug() << "start recording";
//        connection->close();
//    }
//    else {
//        qDebug() << "Not Connected";
//    }
//}

//void Socket::endAudioRecording()
//{
//    connection = new QTcpSocket(this);
//    connection->connectToHost(SOCKET_SERVER, PORT);

//    if(connection->waitForConnected(TIMEOUT)) {
//        connection->write(END_RECORDING);
//        qDebug() << "end recording";
//        connection->close();
//    }
//    else {
//        qDebug() << "Not Connected";
//    }
//}

//void Socket::editAudioParameters()
//{
//    connection = new QTcpSocket(this);
//    connection->connectToHost(SOCKET_SERVER, PORT);

//    if(connection->waitForConnected(TIMEOUT)) {
//        connection->write(START_RECORDING);
//        qDebug() << "start recording";
//        connection->close();
//    }
//    else {
//        qDebug() << "Not Connected";
//    }
//}

//void Socket::setaudioParameters()
//{

//}
