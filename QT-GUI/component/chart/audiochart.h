#ifndef AUDIOCHART_H
#define AUDIOCHART_H

#include <QObject>
#include <qqml.h>
#include <QtCore/QIODevice>
#include <QtCore/QVector>
#include <QtCharts/QChartGlobal>


class AudioChart : public QIODevice
{
    Q_OBJECT
    Q_PROPERTY(float Getdata READ Getdata() NOTIFY bufferUpdated(value))
    QML_ELEMENT
public:
    explicit AudioChart(QObject *parent = nullptr);

    static const int sampleCount = 400;
    QVector<float> getBuffer() const {
        return m_buffer;
    }
signals:
    void bufferUpdated(const QVector<float>& newBuffer);

protected:
    qint64 readData(char *data, qint64 maxSize) override;
    qint64 writeData(const char *data, qint64 maxSize) override;

private:
    QVector<float> m_buffer;
    float Getdata() const;
};

#endif // AUDIOCHART_H
