/****************************************************************************
** Meta object code from reading C++ file 'submaps_display.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../src/cartographer_ros/cartographer_rviz/cartographer_rviz/submaps_display.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'submaps_display.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_cartographer_rviz__Trajectory_t {
    QByteArrayData data[3];
    char stringdata0[49];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_cartographer_rviz__Trajectory_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_cartographer_rviz__Trajectory_t qt_meta_stringdata_cartographer_rviz__Trajectory = {
    {
QT_MOC_LITERAL(0, 0, 29), // "cartographer_rviz::Trajectory"
QT_MOC_LITERAL(1, 30, 17), // "AllEnabledToggled"
QT_MOC_LITERAL(2, 48, 0) // ""

    },
    "cartographer_rviz::Trajectory\0"
    "AllEnabledToggled\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_cartographer_rviz__Trajectory[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       1,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   19,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,

       0        // eod
};

void cartographer_rviz::Trajectory::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Trajectory *_t = static_cast<Trajectory *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->AllEnabledToggled(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject cartographer_rviz::Trajectory::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_cartographer_rviz__Trajectory.data,
      qt_meta_data_cartographer_rviz__Trajectory,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *cartographer_rviz::Trajectory::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *cartographer_rviz::Trajectory::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_cartographer_rviz__Trajectory.stringdata0))
        return static_cast<void*>(const_cast< Trajectory*>(this));
    return QObject::qt_metacast(_clname);
}

int cartographer_rviz::Trajectory::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 1)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 1)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 1;
    }
    return _id;
}
struct qt_meta_stringdata_cartographer_rviz__SubmapsDisplay_t {
    QByteArrayData data[5];
    char stringdata0[77];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_cartographer_rviz__SubmapsDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_cartographer_rviz__SubmapsDisplay_t qt_meta_stringdata_cartographer_rviz__SubmapsDisplay = {
    {
QT_MOC_LITERAL(0, 0, 33), // "cartographer_rviz::SubmapsDis..."
QT_MOC_LITERAL(1, 34, 5), // "Reset"
QT_MOC_LITERAL(2, 40, 0), // ""
QT_MOC_LITERAL(3, 41, 17), // "AllEnabledToggled"
QT_MOC_LITERAL(4, 59, 17) // "ResolutionToggled"

    },
    "cartographer_rviz::SubmapsDisplay\0"
    "Reset\0\0AllEnabledToggled\0ResolutionToggled"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_cartographer_rviz__SubmapsDisplay[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   29,    2, 0x08 /* Private */,
       3,    0,   30,    2, 0x08 /* Private */,
       4,    0,   31,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void cartographer_rviz::SubmapsDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        SubmapsDisplay *_t = static_cast<SubmapsDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->Reset(); break;
        case 1: _t->AllEnabledToggled(); break;
        case 2: _t->ResolutionToggled(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject cartographer_rviz::SubmapsDisplay::staticMetaObject = {
    { &::rviz::MessageFilterDisplay< ::cartographer_ros_msgs::SubmapList>::staticMetaObject, qt_meta_stringdata_cartographer_rviz__SubmapsDisplay.data,
      qt_meta_data_cartographer_rviz__SubmapsDisplay,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *cartographer_rviz::SubmapsDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *cartographer_rviz::SubmapsDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_cartographer_rviz__SubmapsDisplay.stringdata0))
        return static_cast<void*>(const_cast< SubmapsDisplay*>(this));
    return ::rviz::MessageFilterDisplay< ::cartographer_ros_msgs::SubmapList>::qt_metacast(_clname);
}

int cartographer_rviz::SubmapsDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = ::rviz::MessageFilterDisplay< ::cartographer_ros_msgs::SubmapList>::qt_metacall(_c, _id, _a);
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
    return _id;
}
QT_END_MOC_NAMESPACE
