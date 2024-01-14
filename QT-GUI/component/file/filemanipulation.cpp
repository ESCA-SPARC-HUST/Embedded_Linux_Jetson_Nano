#include "filemanipulation.h"

FileManipulation::FileManipulation(QObject *parent) : QObject(parent)
{
    // Implement any necessary initialization here
}


QString FileManipulation::getFilePath()
{
    return filePath;
}

