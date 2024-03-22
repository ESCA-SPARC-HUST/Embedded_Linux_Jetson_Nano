#include "losschart.h"


LossCharts::LossCharts(QObject *parent) : QObject(parent) {
    m_timer.setInterval(3);
    m_timer.setSingleShot(false);
    m_timer.start(1000);
    connect(&m_timer, &QTimer::timeout, this, [this]() {

        // For total loss
        getTotalLoss();
        // qInfo() << m_buffer;
        // Both
        emit totalLossChanged(m_buffer);
    });
}

void LossCharts::getTotalLoss()
{
    FILE* file = fopen("/home/gianghandsome/python-learning/info.txt", "r");
    char loss_value[500];
    m_buffer.clear();
    while (fgets(loss_value, 64, file) != NULL){
        QString a (loss_value);
        int pos = a.lastIndexOf(QChar('\n'));
        float temp_cast = a.left(pos).toFloat();
        m_buffer.append(temp_cast);
    }
    fclose(file);
}
