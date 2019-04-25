// Auto-generated. Do not edit!

// (in-package rosserial_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RequestParamRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RequestParamRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestParamRequest
    let len;
    let data = new RequestParamRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosserial_msgs/RequestParamRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c1f3d28f1b044c871e6eff2e9fc3c667';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RequestParamRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    return resolved;
    }
};

class RequestParamResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ints = null;
      this.floats = null;
      this.strings = null;
    }
    else {
      if (initObj.hasOwnProperty('ints')) {
        this.ints = initObj.ints
      }
      else {
        this.ints = [];
      }
      if (initObj.hasOwnProperty('floats')) {
        this.floats = initObj.floats
      }
      else {
        this.floats = [];
      }
      if (initObj.hasOwnProperty('strings')) {
        this.strings = initObj.strings
      }
      else {
        this.strings = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RequestParamResponse
    // Serialize message field [ints]
    bufferOffset = _arraySerializer.int32(obj.ints, buffer, bufferOffset, null);
    // Serialize message field [floats]
    bufferOffset = _arraySerializer.float32(obj.floats, buffer, bufferOffset, null);
    // Serialize message field [strings]
    bufferOffset = _arraySerializer.string(obj.strings, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestParamResponse
    let len;
    let data = new RequestParamResponse(null);
    // Deserialize message field [ints]
    data.ints = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [floats]
    data.floats = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [strings]
    data.strings = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.ints.length;
    length += 4 * object.floats.length;
    object.strings.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosserial_msgs/RequestParamResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f0e98bda65981986ddf53afa7a40e49';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int32[]   ints
    float32[] floats
    string[]  strings
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RequestParamResponse(null);
    if (msg.ints !== undefined) {
      resolved.ints = msg.ints;
    }
    else {
      resolved.ints = []
    }

    if (msg.floats !== undefined) {
      resolved.floats = msg.floats;
    }
    else {
      resolved.floats = []
    }

    if (msg.strings !== undefined) {
      resolved.strings = msg.strings;
    }
    else {
      resolved.strings = []
    }

    return resolved;
    }
};

module.exports = {
  Request: RequestParamRequest,
  Response: RequestParamResponse,
  md5sum() { return 'd7a0c2be00c9fd03cc69f2863de9c4d9'; },
  datatype() { return 'rosserial_msgs/RequestParam'; }
};
