#ifndef AUDIOCONTROLLER_H
#define AUDIOCONTROLLER_H

#include "core/audio/audioengine.h"
#include "core/audio/audiofile.h"


#include "component/chart/audiochart.h"


class AudioEngine;
class AudioFile;

class AudioChart;

class AudioController :  public QObject
{
    Q_OBJECT
    Q_PROPERTY(QVector<float> bufferData READ bufferData WRITE setbufferData NOTIFY bufferDataChanged)
public:
    explicit AudioController(QObject *parent = 0);
    ~AudioController();
    QVector<float> bufferData() const;
    void setbufferData(const QVector<float> &newBufferData);
    AudioChart *m_audiochart = nullptr;
    AudioEngine *m_audio = nullptr;



    //    Q_INVOKABLE void startRecord();
    //    Q_INVOKABLE void endRecord();
    Q_INVOKABLE void editRecordParameters(QString device, QString path, int sampleRate, int bitsPerSample, int duration);


public slots:
    void sendDataToQml(const QString &data) {
        emit dataSent(data);
    }

signals:
    void bufferDataChanged();
    void dataSent(const QString &);

private:

    AudioFile *m_audio_file = nullptr;
    QVector<float> m_bufferData;
};


#endif // AUDIOCONTROLLER_H
