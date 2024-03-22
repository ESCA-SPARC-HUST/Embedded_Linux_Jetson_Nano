#ifndef LOSSCHART_H
#define LOSSCHART_H

#include <QObject>
#include <QVector>
#include <QQmlEngine>
#include <QTimer>
#include <QFile>

class LossCharts : public QObject
{
public:
    Q_OBJECT
    // Q_PROPERTY(QString totalLossText READ totalLossText NOTIFY totalLossChanged)

public:
    explicit LossCharts(QObject *parent = nullptr);


signals:
    void totalLossChanged(const QVector<float>& newBuffer);

private:
    double m_total_loss = 0;
    // QString totalLossText() const;

    QTimer m_timer;
    QVector<float> m_buffer;
    void getTotalLoss();

};

#endif // LOSSCHART_H
