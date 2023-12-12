#include "audiofile.h"


void AudioFile::setFilePath()
{
    filePath = RECORDING_FILE_PATH;
    qInfo() << filePath;
}
