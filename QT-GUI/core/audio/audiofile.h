#ifndef AUDIOFILE_H
#define AUDIOFILE_H


#include "component/file/filemanipulation.h"
#include "config/audioconfig.h"

class AudioFile : public FileManipulation
{
public:
//    AudioFile();
    void setFilePath();

    void writeFile(const QString filePath, const QVector<QString> &configValue) override;
    QVector<QString> readFile(const QString &filePath) override;
};

#endif // AUDIOFILE_H
