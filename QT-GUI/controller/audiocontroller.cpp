#include "audiocontroller.h"

#include <QtMultimedia/QAudioDeviceInfo>
#include <QtMultimedia/QAudioInput>
#include <QDebug>

AudioController::AudioController(QObject *parent) : QObject{parent}
{

    QList<QAudioDeviceInfo> devices = QAudioDeviceInfo::availableDevices(QAudio::AudioInput);
    // for(int i = 0; i < devices.size(); ++i) {
    //     qInfo() << devices.at(i).deviceName();
    // }

    // QAudioDeviceInfo inputDevice = devices.at(devices.size() - 1);
    QAudioDeviceInfo inputDevice = QAudioDeviceInfo::defaultInputDevice();
    if (inputDevice.supportedSampleRates().size() > 0
        && inputDevice.supportedChannelCounts().size() > 0
        && inputDevice.supportedSampleSizes().size() > 0        //Kiem tra cac dieu kien xem co thoa man
        && inputDevice.supportedCodecs().size() > 0)
    {
        // cau hinh cac thong so do am thanh
        QAudioFormat formatAudio;
        formatAudio.setSampleRate(inputDevice.supportedSampleRates().at(0));
        formatAudio.setChannelCount(inputDevice.supportedChannelCounts().at(0));
        formatAudio.setSampleSize(inputDevice.supportedSampleSizes().at(0));
        formatAudio.setCodec(inputDevice.supportedCodecs().at(0));
        formatAudio.setByteOrder(QAudioFormat::LittleEndian);
        formatAudio.setSampleType(QAudioFormat::UnSignedInt);

        // khoi tạo một obj mới dùng để thu âm thanh từ loa
        m_audio = new AudioEngine(inputDevice, formatAudio, this);
        m_audio->setInputBufferSize(1024);
        m_audiochart = new AudioChart(this);
        m_audiochart->open(QIODevice::WriteOnly);
        m_audio->startAudioInput(m_audiochart);
        m_audio_file = new AudioFile();
        m_audio_config = new AudioConfigFile();
        m_audio_socket = new Socket();
    }

}

void AudioController::updateAudioPath() {
    QVector<QString> result = m_audio_config->loadConfig();
    // qInfo() << result;
}

QVector<float> AudioController::bufferData() const
{
    return m_bufferData;
}

void AudioController::setbufferData(const QVector<float> &newBufferData)
{
    if (m_bufferData == newBufferData)
        return;
    m_bufferData = newBufferData;

    emit bufferDataChanged();
}

void AudioController::startRecord()
{
    m_audio_socket->startAduioRecording();
}

void AudioController::stopRecord()
{
    m_audio_socket->endAudioRecording();
}

void AudioController::editRecordParameters(QString device, QString path, int sampleRate, int bitsPerSample, int duration)
{
    updateAudioPath();
    qInfo() << "Hello Giang";

}

QVector<QString> AudioController::loadParametersConfigure()
{
    QVector<QString> result = m_audio_config->loadConfig();
    return result;

}

void AudioController::saveParametersConfigure(const QVector<QString> &configValue)
{
    m_audio_config->saveConfig(configValue);
}


AudioController::~AudioController()
{
    m_audio->audioInputStop();
}
