#ifndef FEATUREAUDIOEXTRACTOR_H
#define FEATUREAUDIOEXTRACTOR_H

#include <QObject>
#include <QString>

#include <config/featureaudioextractor.h>


#include "component/process/process.h"

class FeatureAudioExtractor : public Process
{
public:
    // FeatureAudioExtractor();
    void setStatement(QString value);
};

#endif // FEATUREAUDIOEXTRACTOR_H
