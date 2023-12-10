#ifndef AUDIOFILE_H
#define AUDIOFILE_H


#include "component/file/filemanipulation.h"
#include "config/audioconfig.h"

class AudioFile : public FileManipulation
{
public:
//    AudioFile();
    void setFilePath();
};

#endif // AUDIOFILE_H
