#ifndef MONITORBACKEND_H
#define MONITORBACKEND_H

#include <QObject>
#include <tuple>
#include <QQmlEngine>
#include <QTimer>
#include <QFile>

class MonitorBackend : public QObject
{
public:
    Q_OBJECT
    Q_PROPERTY(int cpuPercentage READ cpuPercentage NOTIFY cpuChanged)
    Q_PROPERTY(QString cpuText READ cpuText NOTIFY cpuChanged)
    Q_PROPERTY(int ramPercentage READ ramPercentage NOTIFY ramChanged)
    Q_PROPERTY(QString ramText READ ramText NOTIFY ramChanged)
    Q_PROPERTY(QString diskText READ diskText NOTIFY diskChanged)

public:
    explicit MonitorBackend(QObject *parent = nullptr);

signals:
    void cpuChanged();
    void ramChanged();
    void diskChanged();

private:
    int cpuPercentage() const;
    QString cpuText() const;

    int ramPercentage() const;
    QString ramText() const;

    QString diskText() const;

    QTimer m_timer;

    unsigned long long lastTotalUser, lastTotalUserLow, lastTotalSys, lastTotalIdle;
    double cpu_m_steps = 0;
    int cpu_usage = 0;

    double ram_m_steps = 0;
    int ram_usage = 0;

    double disk_m_steps = 0;
    int disk_usage = 0;

    unsigned int user, total = 0;
    std::tuple<unsigned int, unsigned int> readFile();

    double getCpu();
    double getRam();
    int parseLine(char* line);
    double getDisk();

};

#endif // MONITORBACKEND_H
