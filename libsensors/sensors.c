/*
 * Copyright (C) 2008 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <hardware/sensors.h>

#include "nusensors.h"

/* Sensor types
 
#define SENSOR_TYPE_ACCELEROMETER       1 //三轴加速度感应器 返回三个坐标轴的加速度  单位m/s2
#define SENSOR_TYPE_MAGNETIC_FIELD      2   //磁场感应 返回三个坐标轴的数值  微特斯拉
#define SENSOR_TYPE_ORIENTATION         3 //方向感应器 已过时 可以使用方法获得
#define SENSOR_TYPE_GYROSCOPE           4 //陀螺仪 可判断方向 返回三个坐标轴上的角度
#define SENSOR_TYPE_LIGHT               5 //光线感应器 单位 lux 勒克斯
#define SENSOR_TYPE_PRESSURE            6 //压力感应器  单位 千帕斯卡
#define SENSOR_TYPE_TEMPERATURE         7 //温度传感器 单位 摄氏度
#define SENSOR_TYPE_PROXIMITY           8 //距离传感器
#define SENSOR_TYPE_GRAVITY             9   //重力感应器
#define SENSOR_TYPE_LINEAR_ACCELERATION 10 //线性加速度
#define SENSOR_TYPE_ROTATION_VECTOR     11 //翻转传感器
* 
*/
/*****************************************************************************/
/* The SENSORS Module */
/*****************************************************************************/
/*
 { const char*     name;
    const char*     vendor;   
    int             version;
    int             handle;
    int             type;
    float           maxRange;
    float           resolution;
    float           power;
    int32_t         minDelay;
    void*           reserved[8];
 
 } */

static const struct sensor_t sSensorList[] = {
    { "KXTF9 3-axis Accelerometer",
        "Kionix",
        1, SENSORS_HANDLE_BASE + SENSOR_TYPE_ACCELEROMETER, SENSOR_TYPE_ACCELEROMETER,
        8.0f*9.81f, KXTF9_CONVERT_A, 0.57f, 0, { } },
/*
    { "AK8973 Accelerometer sensor",
        "Asahi Kasei",
        1, SENSORS_HANDLE_BASE + SENSOR_TYPE_ACCELEROMETER, SENSOR_TYPE_ACCELEROMETER,
        5.76f*9.81f, AK8973_CONVERT_A, 0.2f, 0, { } },
*/
    { "AK8975 3-axis Magnetic Field Sensor",
        "Asahi Kasei",
        1, SENSORS_HANDLE_BASE + SENSOR_TYPE_MAGNETIC_FIELD, SENSOR_TYPE_MAGNETIC_FIELD,
        2000.0f, AK8973_CONVERT_M, 6.8f, 0, { } },

    { "AK8975 Orientation Sensor",
        "Asahi Kasei",
        1, SENSORS_HANDLE_BASE + SENSOR_TYPE_ORIENTATION, SENSOR_TYPE_ORIENTATION,
        360.0f, AK8973_CONVERT_O, 7.0f, 0, { } },

    { "AK8975 Temperature Sensor",
        "Asahi Kasei",
        1, SENSORS_HANDLE_BASE + SENSOR_TYPE_TEMPERATURE, SENSOR_TYPE_TEMPERATURE,
        85.0f, 1.0f, 0.2f, 0, { } },

    { "ISL29030 Proximity Sensor",
        "Intersil Corporation",
        1, SENSORS_HANDLE_BASE + SENSOR_TYPE_PROXIMITY, SENSOR_TYPE_PROXIMITY,
        100.0f, 1.0f, 0.5f, 0, { } },

    { "ISL29030 Light Sensor",
        "Intersil Corporation",
        1, SENSORS_HANDLE_BASE + SENSOR_TYPE_LIGHT, SENSOR_TYPE_LIGHT,
        16384.0f, 1.0f, 0.5f, 0, { } },
};

/*****************************************************************************/

static int open_sensors(const struct hw_module_t* module, const char* name,
        struct hw_device_t** device);

static int sensors__get_sensors_list(struct sensors_module_t* module,
        struct sensor_t const** list)
{
    *list = sSensorList;
    return ARRAY_SIZE(sSensorList);
}

static struct hw_module_methods_t sensors_module_methods = {
    .open = open_sensors
};

const struct sensors_module_t HAL_MODULE_INFO_SYM = {
    .common = {
        .tag = HARDWARE_MODULE_TAG,
        .version_major = 1,
        .version_minor = 0,
        .id = SENSORS_HARDWARE_MODULE_ID,
        .name = "Motorola Defy Sensors Module",
        .author = "Sorin P. <sorin@hypermagik.com>",
        .methods = &sensors_module_methods,
    },
    .get_sensors_list = sensors__get_sensors_list
};

/*****************************************************************************/

static int open_sensors(const struct hw_module_t* module, const char* name,
        struct hw_device_t** device)
{
    return init_nusensors(module, device);
}

/*****************************************************************************/
