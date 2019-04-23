// Auto-generated. Do not edit!

// (in-package ros_arduino_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ArduinoConstants {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArduinoConstants
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArduinoConstants
    let len;
    let data = new ArduinoConstants(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_arduino_msgs/ArduinoConstants';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ca092be59914d9e8dd11612f0a5c895';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Arduino-style constants
    uint8 LOW=0
    uint8 HIGH=1
    uint8 INPUT=0
    uint8 OUTPUT=1
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArduinoConstants(null);
    return resolved;
    }
};

// Constants for message
ArduinoConstants.Constants = {
  LOW: 0,
  HIGH: 1,
  INPUT: 0,
  OUTPUT: 1,
}

module.exports = ArduinoConstants;
