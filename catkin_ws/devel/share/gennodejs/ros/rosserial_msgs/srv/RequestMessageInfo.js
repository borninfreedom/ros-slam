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

class RequestMessageInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RequestMessageInfoRequest
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestMessageInfoRequest
    let len;
    let data = new RequestMessageInfoRequest(null);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.type.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosserial_msgs/RequestMessageInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dc67331de85cf97091b7d45e5c64ab75';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RequestMessageInfoRequest(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    return resolved;
    }
};

class RequestMessageInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.md5 = null;
      this.definition = null;
    }
    else {
      if (initObj.hasOwnProperty('md5')) {
        this.md5 = initObj.md5
      }
      else {
        this.md5 = '';
      }
      if (initObj.hasOwnProperty('definition')) {
        this.definition = initObj.definition
      }
      else {
        this.definition = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RequestMessageInfoResponse
    // Serialize message field [md5]
    bufferOffset = _serializer.string(obj.md5, buffer, bufferOffset);
    // Serialize message field [definition]
    bufferOffset = _serializer.string(obj.definition, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestMessageInfoResponse
    let len;
    let data = new RequestMessageInfoResponse(null);
    // Deserialize message field [md5]
    data.md5 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [definition]
    data.definition = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.md5.length;
    length += object.definition.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosserial_msgs/RequestMessageInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fe452186a069bed40f09b8628fe5eac8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    string md5
    string definition
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RequestMessageInfoResponse(null);
    if (msg.md5 !== undefined) {
      resolved.md5 = msg.md5;
    }
    else {
      resolved.md5 = ''
    }

    if (msg.definition !== undefined) {
      resolved.definition = msg.definition;
    }
    else {
      resolved.definition = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: RequestMessageInfoRequest,
  Response: RequestMessageInfoResponse,
  md5sum() { return '6416d80296dfbbdd5f7b2cee839f9316'; },
  datatype() { return 'rosserial_msgs/RequestMessageInfo'; }
};
