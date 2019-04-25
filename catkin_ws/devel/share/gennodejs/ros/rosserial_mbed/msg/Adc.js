// Auto-generated. Do not edit!

// (in-package rosserial_mbed.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Adc {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.adc0 = null;
      this.adc1 = null;
      this.adc2 = null;
      this.adc3 = null;
      this.adc4 = null;
      this.adc5 = null;
    }
    else {
      if (initObj.hasOwnProperty('adc0')) {
        this.adc0 = initObj.adc0
      }
      else {
        this.adc0 = 0;
      }
      if (initObj.hasOwnProperty('adc1')) {
        this.adc1 = initObj.adc1
      }
      else {
        this.adc1 = 0;
      }
      if (initObj.hasOwnProperty('adc2')) {
        this.adc2 = initObj.adc2
      }
      else {
        this.adc2 = 0;
      }
      if (initObj.hasOwnProperty('adc3')) {
        this.adc3 = initObj.adc3
      }
      else {
        this.adc3 = 0;
      }
      if (initObj.hasOwnProperty('adc4')) {
        this.adc4 = initObj.adc4
      }
      else {
        this.adc4 = 0;
      }
      if (initObj.hasOwnProperty('adc5')) {
        this.adc5 = initObj.adc5
      }
      else {
        this.adc5 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Adc
    // Serialize message field [adc0]
    bufferOffset = _serializer.uint16(obj.adc0, buffer, bufferOffset);
    // Serialize message field [adc1]
    bufferOffset = _serializer.uint16(obj.adc1, buffer, bufferOffset);
    // Serialize message field [adc2]
    bufferOffset = _serializer.uint16(obj.adc2, buffer, bufferOffset);
    // Serialize message field [adc3]
    bufferOffset = _serializer.uint16(obj.adc3, buffer, bufferOffset);
    // Serialize message field [adc4]
    bufferOffset = _serializer.uint16(obj.adc4, buffer, bufferOffset);
    // Serialize message field [adc5]
    bufferOffset = _serializer.uint16(obj.adc5, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Adc
    let len;
    let data = new Adc(null);
    // Deserialize message field [adc0]
    data.adc0 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [adc1]
    data.adc1 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [adc2]
    data.adc2 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [adc3]
    data.adc3 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [adc4]
    data.adc4 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [adc5]
    data.adc5 = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosserial_mbed/Adc';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6d7853a614e2e821319068311f2af25b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 adc0
    uint16 adc1
    uint16 adc2
    uint16 adc3
    uint16 adc4
    uint16 adc5
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Adc(null);
    if (msg.adc0 !== undefined) {
      resolved.adc0 = msg.adc0;
    }
    else {
      resolved.adc0 = 0
    }

    if (msg.adc1 !== undefined) {
      resolved.adc1 = msg.adc1;
    }
    else {
      resolved.adc1 = 0
    }

    if (msg.adc2 !== undefined) {
      resolved.adc2 = msg.adc2;
    }
    else {
      resolved.adc2 = 0
    }

    if (msg.adc3 !== undefined) {
      resolved.adc3 = msg.adc3;
    }
    else {
      resolved.adc3 = 0
    }

    if (msg.adc4 !== undefined) {
      resolved.adc4 = msg.adc4;
    }
    else {
      resolved.adc4 = 0
    }

    if (msg.adc5 !== undefined) {
      resolved.adc5 = msg.adc5;
    }
    else {
      resolved.adc5 = 0
    }

    return resolved;
    }
};

module.exports = Adc;
