/****************************************************************************
** Meta object code from reading C++ file 'monitorbackend.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.16)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../QT-GUI/controller/monitorbackend.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'monitorbackend.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.16. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_MonitorBackend_t {
    QByteArrayData data[10];
    char stringdata0[103];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_MonitorBackend_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_MonitorBackend_t qt_meta_stringdata_MonitorBackend = {
    {
QT_MOC_LITERAL(0, 0, 14), // "MonitorBackend"
QT_MOC_LITERAL(1, 15, 10), // "cpuChanged"
QT_MOC_LITERAL(2, 26, 0), // ""
QT_MOC_LITERAL(3, 27, 10), // "ramChanged"
QT_MOC_LITERAL(4, 38, 11), // "diskChanged"
QT_MOC_LITERAL(5, 50, 13), // "cpuPercentage"
QT_MOC_LITERAL(6, 64, 7), // "cpuText"
QT_MOC_LITERAL(7, 72, 13), // "ramPercentage"
QT_MOC_LITERAL(8, 86, 7), // "ramText"
QT_MOC_LITERAL(9, 94, 8) // "diskText"

    },
    "MonitorBackend\0cpuChanged\0\0ramChanged\0"
    "diskChanged\0cpuPercentage\0cpuText\0"
    "ramPercentage\0ramText\0diskText"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_MonitorBackend[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       5,   32, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   29,    2, 0x06 /* Public */,
       3,    0,   30,    2, 0x06 /* Public */,
       4,    0,   31,    2, 0x06 /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // properties: name, type, flags
       5, QMetaType::Int, 0x00495001,
       6, QMetaType::QString, 0x00495001,
       7, QMetaType::Int, 0x00495001,
       8, QMetaType::QString, 0x00495001,
       9, QMetaType::QString, 0x00495001,

 // properties: notify_signal_id
       0,
       0,
       1,
       1,
       2,

       0        // eod
};

void MonitorBackend::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<MonitorBackend *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->cpuChanged(); break;
        case 1: _t->ramChanged(); break;
        case 2: _t->diskChanged(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (MonitorBackend::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&MonitorBackend::cpuChanged)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (MonitorBackend::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&MonitorBackend::ramChanged)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (MonitorBackend::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&MonitorBackend::diskChanged)) {
                *result = 2;
                return;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<MonitorBackend *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< int*>(_v) = _t->cpuPercentage(); break;
        case 1: *reinterpret_cast< QString*>(_v) = _t->cpuText(); break;
        case 2: *reinterpret_cast< int*>(_v) = _t->ramPercentage(); break;
        case 3: *reinterpret_cast< QString*>(_v) = _t->ramText(); break;
        case 4: *reinterpret_cast< QString*>(_v) = _t->diskText(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
    (void)_a;
}

QT_INIT_METAOBJECT const QMetaObject MonitorBackend::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_MonitorBackend.data,
    qt_meta_data_MonitorBackend,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *MonitorBackend::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *MonitorBackend::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_MonitorBackend.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int MonitorBackend::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 3;
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 5;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void MonitorBackend::cpuChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void MonitorBackend::ramChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void MonitorBackend::diskChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE