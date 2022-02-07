#ifndef CONFIG_H
#define CONFIG_H

#include <QObject>
#include <QFile>
#include <QList>
#include <QDataStream>
#include <QtDebug>

struct configstruct
{
  quint8 conf;
  qint8 val;
};

class config : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool left_turn READ left_turn WRITE set_left_turn NOTIFY left_turnChanged)
    Q_PROPERTY(bool right_turn READ right_turn WRITE set_right_turn NOTIFY right_turnChanged)
    Q_PROPERTY(bool fog_lamp READ fog_lamp WRITE set_fog_lamp NOTIFY fog_lampChanged)
    Q_PROPERTY(bool safety_belt READ safety_belt WRITE set_safety_belt NOTIFY safety_beltChanged)
    Q_PROPERTY(bool door_indicator READ door_indicator WRITE set_door_indicator NOTIFY door_indicatorChanged)
    Q_PROPERTY(bool enggine_check READ enggine_check WRITE set_enggine_check NOTIFY enggine_checkChanged)
    Q_PROPERTY(bool brake_indicator READ brake_indicator WRITE set_brake_indicator NOTIFY brake_indicatorChanged)
    Q_PROPERTY(bool park_indicator READ park_indicator WRITE set_park_indicator NOTIFY park_indicatorChanged)
    Q_PROPERTY(bool battery_temp READ battery_temp WRITE set_battery_temp NOTIFY battery_tempChanged)
    Q_PROPERTY(bool motor_temp READ motor_temp WRITE set_motor_temp NOTIFY motor_tempChanged)
    Q_PROPERTY(qint32 speed_value READ speed_value WRITE set_speed_value NOTIFY speed_valueChanged)
    Q_PROPERTY(qint32 main_lamp READ main_lamp WRITE set_main_lamp NOTIFY main_lampChanged)
    Q_PROPERTY(qint32 max_speed READ max_speed WRITE set_max_speed NOTIFY max_speedChanged)
    Q_PROPERTY(qint32 odo READ odo WRITE set_odo NOTIFY odoChanged)
    Q_PROPERTY(qint32 trip READ trip WRITE set_trip NOTIFY tripChanged)
    Q_PROPERTY(qint32 power_value READ power_value WRITE set_power_value NOTIFY power_valueChanged)
    Q_PROPERTY(qint32 battery_value READ battery_value WRITE set_battery_value NOTIFY battery_valueChanged)
    Q_PROPERTY(qint32 max_distance READ max_distance WRITE set_max_distance NOTIFY max_distanceChanged)
    Q_PROPERTY(qint32 envo_temp READ envo_temp WRITE set_envo_temp NOTIFY envo_tempChanged)
    Q_PROPERTY(qint32 gear READ gear WRITE set_gear NOTIFY gearChanged)

public:
    explicit config(QObject *parent = nullptr);
    bool left_turn();
    bool right_turn();
    bool fog_lamp();
    bool safety_belt();
    bool door_indicator();
    bool enggine_check();
    bool brake_indicator();
    bool park_indicator();
    bool battery_temp();
    bool motor_temp();
    qint32 main_lamp();
    qint32 speed_value();
    qint32 max_speed();
    qint32 odo();
    qint32 trip();
    qint32 power_value();
    qint32 battery_value();
    qint32 max_distance();
    qint32 envo_temp();
    qint32 gear();
    QList<configstruct> list;


public slots:
    void set_left_turn(const bool &left_turn);
    void set_right_turn(const bool &right_turn);
    void set_fog_lamp(const bool &fog_lamp);
    void set_safety_belt(const bool &safety_belt);
    void set_door_indicator(const bool &door_indicator);
    void set_enggine_check(const bool &enggine_check);
    void set_brake_indicator(const bool &brake_indicator);
    void set_park_indicator(const bool &park_indicator);
    void set_battery_temp(const bool &battery_temp);
    void set_motor_temp(const bool &motor_temp);
    void set_main_lamp(const qint32 &main_lamp);
    void set_speed_value(const qint32 &speed_value);
    void set_max_speed(const qint32 &max_speed);
    void set_odo(const qint32 &odo);
    void set_trip(const qint32 &trip);
    void set_power_value(const qint32 &power_value);
    void set_battery_value(const qint32 &battery_valu);
    void set_max_distance(const qint32 &max_distance);
    void set_envo_temp(const qint32 &envo_temp);
    void set_gear(const qint32 &gear);


signals:
    void left_turnChanged();
    void right_turnChanged();
    void low_lampChanged();
    void high_lampChanged();
    void fog_lampChanged();
    void safety_beltChanged();
    void door_indicatorChanged();
    void enggine_checkChanged();
    void brake_indicatorChanged();
    void park_indicatorChanged();
    void battery_tempChanged();
    void motor_tempChanged();
    void main_lampChanged();
    void speed_valueChanged();
    void max_speedChanged();
    void odoChanged();
    void tripChanged();
    void power_valueChanged();
    void battery_valueChanged();
    void max_distanceChanged();
    void envo_tempChanged();
    void gearChanged();

private:
    bool m_left_turn;
    bool m_right_turn;
    bool m_fog_lamp;
    bool m_safety_belt;
    bool m_door_indicator;
    bool m_enggine_check;
    bool m_brake_indicator;
    bool m_park_indicator;
    bool m_battery_temp;
    bool m_motor_temp;
    qint32 m_main_lamp;
    qint32 m_speed_value;
    qint32 m_max_speed;
    qint32 m_odo;
    qint32 m_trip;
    qint32 m_power_value;
    qint32 m_battery_value;
    qint32 m_max_distance;
    qint32 m_envo_temp;
    qint32 m_gear;
    QList<configstruct> m_list;
};

#endif // CONFIG_H
