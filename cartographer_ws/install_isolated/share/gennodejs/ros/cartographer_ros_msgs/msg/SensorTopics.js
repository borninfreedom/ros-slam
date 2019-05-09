// Auto-generated. Do not edit!

// (in-package cartographer_ros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SensorTopics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.laser_scan_topic = null;
      this.multi_echo_laser_scan_topic = null;
      this.point_cloud2_topic = null;
      this.imu_topic = null;
      this.odometry_topic = null;
      this.nav_sat_fix_topic = null;
      this.landmark_topic = null;
    }
    else {
      if (initObj.hasOwnProperty('laser_scan_topic')) {
        this.laser_scan_topic = initObj.laser_scan_topic
      }
      else {
        this.laser_scan_topic = '';
      }
      if (initObj.hasOwnProperty('multi_echo_laser_scan_topic')) {
        this.multi_echo_laser_scan_topic = initObj.multi_echo_laser_scan_topic
      }
      else {
        this.multi_echo_laser_scan_topic = '';
      }
      if (initObj.hasOwnProperty('point_cloud2_topic')) {
        this.point_cloud2_topic = initObj.point_cloud2_topic
      }
      else {
        this.point_cloud2_topic = '';
      }
      if (initObj.hasOwnProperty('imu_topic')) {
        this.imu_topic = initObj.imu_topic
      }
      else {
        this.imu_topic = '';
      }
      if (initObj.hasOwnProperty('odometry_topic')) {
        this.odometry_topic = initObj.odometry_topic
      }
      else {
        this.odometry_topic = '';
      }
      if (initObj.hasOwnProperty('nav_sat_fix_topic')) {
        this.nav_sat_fix_topic = initObj.nav_sat_fix_topic
      }
      else {
        this.nav_sat_fix_topic = '';
      }
      if (initObj.hasOwnProperty('landmark_topic')) {
        this.landmark_topic = initObj.landmark_topic
      }
      else {
        this.landmark_topic = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorTopics
    // Serialize message field [laser_scan_topic]
    bufferOffset = _serializer.string(obj.laser_scan_topic, buffer, bufferOffset);
    // Serialize message field [multi_echo_laser_scan_topic]
    bufferOffset = _serializer.string(obj.multi_echo_laser_scan_topic, buffer, bufferOffset);
    // Serialize message field [point_cloud2_topic]
    bufferOffset = _serializer.string(obj.point_cloud2_topic, buffer, bufferOffset);
    // Serialize message field [imu_topic]
    bufferOffset = _serializer.string(obj.imu_topic, buffer, bufferOffset);
    // Serialize message field [odometry_topic]
    bufferOffset = _serializer.string(obj.odometry_topic, buffer, bufferOffset);
    // Serialize message field [nav_sat_fix_topic]
    bufferOffset = _serializer.string(obj.nav_sat_fix_topic, buffer, bufferOffset);
    // Serialize message field [landmark_topic]
    bufferOffset = _serializer.string(obj.landmark_topic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorTopics
    let len;
    let data = new SensorTopics(null);
    // Deserialize message field [laser_scan_topic]
    data.laser_scan_topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [multi_echo_laser_scan_topic]
    data.multi_echo_laser_scan_topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [point_cloud2_topic]
    data.point_cloud2_topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [imu_topic]
    data.imu_topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [odometry_topic]
    data.odometry_topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [nav_sat_fix_topic]
    data.nav_sat_fix_topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [landmark_topic]
    data.landmark_topic = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.laser_scan_topic.length;
    length += object.multi_echo_laser_scan_topic.length;
    length += object.point_cloud2_topic.length;
    length += object.imu_topic.length;
    length += object.odometry_topic.length;
    length += object.nav_sat_fix_topic.length;
    length += object.landmark_topic.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cartographer_ros_msgs/SensorTopics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bafbff7d66e3eeeb8d4a9195096cba08';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Copyright 2016 The Cartographer Authors
    #
    # Licensed under the Apache License, Version 2.0 (the "License");
    # you may not use this file except in compliance with the License.
    # You may obtain a copy of the License at
    #
    #      http://www.apache.org/licenses/LICENSE-2.0
    #
    # Unless required by applicable law or agreed to in writing, software
    # distributed under the License is distributed on an "AS IS" BASIS,
    # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    # See the License for the specific language governing permissions and
    # limitations under the License.
    
    string laser_scan_topic
    string multi_echo_laser_scan_topic
    string point_cloud2_topic
    string imu_topic
    string odometry_topic
    string nav_sat_fix_topic
    string landmark_topic
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SensorTopics(null);
    if (msg.laser_scan_topic !== undefined) {
      resolved.laser_scan_topic = msg.laser_scan_topic;
    }
    else {
      resolved.laser_scan_topic = ''
    }

    if (msg.multi_echo_laser_scan_topic !== undefined) {
      resolved.multi_echo_laser_scan_topic = msg.multi_echo_laser_scan_topic;
    }
    else {
      resolved.multi_echo_laser_scan_topic = ''
    }

    if (msg.point_cloud2_topic !== undefined) {
      resolved.point_cloud2_topic = msg.point_cloud2_topic;
    }
    else {
      resolved.point_cloud2_topic = ''
    }

    if (msg.imu_topic !== undefined) {
      resolved.imu_topic = msg.imu_topic;
    }
    else {
      resolved.imu_topic = ''
    }

    if (msg.odometry_topic !== undefined) {
      resolved.odometry_topic = msg.odometry_topic;
    }
    else {
      resolved.odometry_topic = ''
    }

    if (msg.nav_sat_fix_topic !== undefined) {
      resolved.nav_sat_fix_topic = msg.nav_sat_fix_topic;
    }
    else {
      resolved.nav_sat_fix_topic = ''
    }

    if (msg.landmark_topic !== undefined) {
      resolved.landmark_topic = msg.landmark_topic;
    }
    else {
      resolved.landmark_topic = ''
    }

    return resolved;
    }
};

module.exports = SensorTopics;
