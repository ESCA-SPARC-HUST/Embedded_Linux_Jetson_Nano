#include "monitorbackend.h"
#include <QStorageInfo>
#include <QDebug>

double MonitorBackend::getDisk() {
    QStorageInfo storage = QStorageInfo::root();
    return static_cast<double>(storage.bytesTotal()-storage.bytesAvailable())/storage.bytesTotal() * 100;
}


// Some func for ram
int MonitorBackend::parseLine(char* line){
    // This assumes that a digit will be found and the line ends in " Kb".
    int i = strlen(line);
    const char* p = line;
    while (*p <'0' || *p > '9') p++;
    line[i-3] = '\0';
    i = atoi(p);
    return i;
}
double MonitorBackend::getRam(){ //Note: this value is in KB!
    FILE* file = fopen("/proc/meminfo", "r");
    int memFree = -1;
    int memTotal = -1;
    char line[128];

    while (fgets(line, 128, file) != NULL){
        if (strncmp(line, "MemFree:", 6) == 0){
            memFree = parseLine(line);
        }
        if (strncmp(line, "MemTotal:", 6) == 0){
            memTotal = parseLine(line);
        }
    }
    fclose(file);
    return static_cast<double>(memTotal-memFree)/memTotal * 100;
}

double MonitorBackend::getCpu()
{
    double percent;
    FILE* file;
    unsigned long long totalUser, totalUserLow, totalSys, totalIdle, total;

    file = fopen("/proc/stat", "r");
    fscanf(file, "cpu %llu %llu %llu %llu", &totalUser, &totalUserLow,
           &totalSys, &totalIdle);
    fclose(file);

    if (totalUser < lastTotalUser || totalUserLow < lastTotalUserLow ||
        totalSys < lastTotalSys || totalIdle < lastTotalIdle){
        //Overflow detection. Just skip this value.
        percent = -1.0;
    }
    else{
        total = (totalUser - lastTotalUser) + (totalUserLow - lastTotalUserLow) +
                (totalSys - lastTotalSys);
        percent = total;
        total += (totalIdle - lastTotalIdle);
        percent /= total;
        percent *= 100;
    }

    lastTotalUser = totalUser;
    lastTotalUserLow = totalUserLow;
    lastTotalSys = totalSys;
    lastTotalIdle = totalIdle;

    return percent;
}
// end

MonitorBackend::MonitorBackend(QObject *parent) : QObject(parent) {
    m_timer.setInterval(3);
    m_timer.setSingleShot(false);
    m_timer.start(1000);
    connect(&m_timer, &QTimer::timeout, this, [this]() {

        // For cpu
        cpu_m_steps = getCpu();
        cpu_usage = cpu_m_steps;

        // For ram
        ram_m_steps = getRam();
        ram_usage = ram_m_steps;

        // For disk
        disk_m_steps = getDisk();
        disk_usage = disk_m_steps;



        // Both
        cpuChanged();
        ramChanged();
        diskChanged();
    });
}

int MonitorBackend::cpuPercentage() const { return (cpu_m_steps-50); }

QString MonitorBackend::cpuText() const {
    return QString::number(cpu_usage) + "%";
}

int MonitorBackend::ramPercentage() const { return (ram_m_steps-50); }

QString MonitorBackend::ramText() const {
    return QString::number(ram_usage) + "%";
}

QString MonitorBackend::diskText() const {
    return "Disk usage: " + QString::number(disk_usage) + "%";
}
