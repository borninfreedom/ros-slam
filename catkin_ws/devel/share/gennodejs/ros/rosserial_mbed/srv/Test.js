// Auto-generated. Do not edit!

// (in-package rosserial_mbed.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TestRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input = null;
    }
    else {
      if (initObj.hasOwnProperty('input')) {
        this.input = initObj.input
      }
      else {
        this.input = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestRequest
    // Serialize message field [input]
    bufferOffset = _serializer.string(obj.input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestRequest
    let len;
    let data = new TestRequest(null);
    // Deserialize message field [input]
    data.input = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.input.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosserial_mbed/TestRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '39e92f1778057359c64c7b8a7d7b19de';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string input
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestRequest(null);
    if (msg.input !== undefined) {
      resolved.input = msg.input;
    }
    else {
      resolved.input = ''
    }

    return resolved;
    }
};

class TestResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.output = null;
    }
    else {
      if (initObj.hasOwnProperty('output')) {
        this.output = initObj.output
      }
      else {
        this.output = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestResponse
    // Serialize message field [output]
    bufferOffset = _serializer.string(obj.output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestResponse
    let len;
    let data = new TestResponse(null);
    // Deserialize message field [output]
    data.output = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.output.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosserial_mbed/TestResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0825d95fdfa2c8f4bbb4e9c74bccd3fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string output
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestResponse(null);
    if (msg.output !== undefined) {
      resolved.output = msg.output;
    }
    else {
      resolved.output = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: TestRequest,
  Response: TestResponse,
  md5sum() { return 'c63e85f503b805d84df783e71c6bb0d2'; },
  datatype() { return 'rosserial_mbed/Test'; }
};
