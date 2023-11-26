#ifndef AUDIOCONTROLLER_H
#define AUDIOCONTROLLER_H

#include "core/audioengine.h"
#include "component/chart/audiochart.h"


class AudioEngine;
class AudioChart;

class AudioController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QVector<float> bufferData READ bufferData WRITE setbufferData NOTIFY bufferDataChanged)

public:
    explicit AudioController(QObject *parent = nullptr);
    ~AudioController();

    QVector<float> bufferData() const;
    void setbufferData(const QVector<float> &newBufferData);
    AudioChart *m_audiochart = nullptr;

public slots:
    void sendDataToQml(const QString &data) {
        emit dataSent(data);
    }

signals:
    void bufferDataChanged();
    void dataSent(const QString &);

private:
    AudioEngine *m_audio = nullptr;
    QVector<float> m_bufferData;
};


#endif // AUDIOCONTROLLER_H
