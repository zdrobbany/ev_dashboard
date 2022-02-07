#include "config.h"

config::config(QObject *parent) : QObject(parent){
}

bool config::left_turn(){return m_left_turn;}
void config::set_left_turn(const bool &left_turn){
    if (left_turn == m_left_turn){
        return;
    }
    m_left_turn = left_turn;
    // save_to_file()
    emit left_turnChanged();
}
bool config::right_turn(){return m_right_turn;}
void config::set_right_turn(const bool &right_turn){
    if (right_turn == m_right_turn){
        return;
    }
    m_right_turn = right_turn;
    // save_to_file()
    emit right_turnChanged();
}

bool config::fog_lamp(){return m_fog_lamp;}
void config::set_fog_lamp(const bool &fog_lamp){
    if (fog_lamp == m_fog_lamp){
        return;
    }
    m_fog_lamp = fog_lamp;
    // save_to_file()
    emit fog_lampChanged();
}
bool config::safety_belt(){return m_safety_belt;}
void config::set_safety_belt(const bool &safety_belt){
    if (safety_belt == m_safety_belt){
        return;
    }
    m_safety_belt = safety_belt;
    // save_to_file()
    emit safety_beltChanged();
}
bool config::door_indicator(){return m_door_indicator;}
void config::set_door_indicator(const bool &door_indicator){
    if (door_indicator == m_door_indicator){
        return;
    }
    m_door_indicator = door_indicator;
    // save_to_file()
    emit door_indicatorChanged();
}
bool config::enggine_check(){return m_enggine_check;}
void config::set_enggine_check(const bool &enggine_check){
    if (enggine_check == m_enggine_check){
        return;
    }
    m_enggine_check = enggine_check;
    // save_to_file()
    emit enggine_checkChanged();
}
bool config::brake_indicator(){return m_brake_indicator;}
void config::set_brake_indicator(const bool &brake_indicator){
    if (brake_indicator == m_brake_indicator){
        return;
    }
    m_brake_indicator = brake_indicator;
    // save_to_file()
    emit brake_indicatorChanged();
}
bool config::park_indicator(){return m_park_indicator;}
void config::set_park_indicator(const bool &park_indicator){
    if (park_indicator == m_park_indicator){
        return;
    }
    m_park_indicator = park_indicator;
    // save_to_file()
    emit park_indicatorChanged();
}
bool config::battery_temp(){return m_battery_temp;}
void config::set_battery_temp(const bool &battery_temp){
    if (battery_temp == m_battery_temp){
        return;
    }
    m_battery_temp = battery_temp;
    // save_to_file()
    emit battery_tempChanged();
}
bool config::motor_temp(){return m_motor_temp;}
void config::set_motor_temp(const bool &motor_temp){
    if (motor_temp == m_motor_temp){
        return;
    }
    m_motor_temp = motor_temp;
    // save_to_file()
    emit motor_tempChanged();
}

qint32 config::main_lamp(){return m_main_lamp;}
void config::set_main_lamp(const qint32 &main_lamp){
    if(main_lamp == m_main_lamp){
        return;
    }
    m_main_lamp = main_lamp;
    // save_to_file();
    emit main_lampChanged();
}

qint32 config::speed_value(){return m_speed_value;}
void config::set_speed_value(const qint32 &speed_value){
    if(speed_value == m_speed_value){
        return;
    }
    m_speed_value = speed_value;
    // save_to_file();
    emit speed_valueChanged();
}
qint32 config::max_speed(){return m_max_speed;}
void config::set_max_speed(const qint32 &max_speed){
    if(max_speed == m_max_speed){
        return;
    }
    m_max_speed = max_speed;
    // save_to_file();
    emit max_speedChanged();
}
qint32 config::odo(){return m_odo;}
void config::set_odo(const qint32 &odo){
    if(odo == m_odo){
        return;
    }
    m_odo = odo;
    // save_to_file();
    emit odoChanged();
}
qint32 config::trip(){return m_trip;}
void config::set_trip(const qint32 &trip){
    if(trip == m_trip){
        return;
    }
    m_trip = trip;
    // save_to_file();
    emit tripChanged();
}
qint32 config::power_value(){return m_power_value;}
void config::set_power_value(const qint32 &power_value){
    if(power_value == m_power_value){
        return;
    }
    m_power_value = power_value;
    // save_to_file();
    emit power_valueChanged();
}
qint32 config::battery_value(){return m_battery_value;}
void config::set_battery_value(const qint32 &battery_value){
    if(battery_value == m_battery_value){
        return;
    }
    m_battery_value = battery_value;
    // save_to_file();
    emit battery_valueChanged();
}
qint32 config::max_distance(){return m_max_distance;}
void config::set_max_distance(const qint32 &max_distance){
    if(max_distance == m_max_distance){
        return;
    }
    m_max_distance = max_distance;
    // save_to_file();
    emit max_distanceChanged();
}
qint32 config::envo_temp(){return m_envo_temp;}
void config::set_envo_temp(const qint32 &envo_temp){
    if(envo_temp == m_envo_temp){
        return;
    }
    m_envo_temp = envo_temp;
    // save_to_file();
    emit envo_tempChanged();
}
qint32 config::gear(){return m_gear;}
void config::set_gear(const qint32 &gear){
    if(gear == m_gear){
        return;
    }
    m_gear = gear;
    // save_to_file();
    emit gearChanged();
}
