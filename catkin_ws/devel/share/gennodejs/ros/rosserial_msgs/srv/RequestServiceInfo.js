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

class RequestServiceInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.service = null;
    }
    else {
      if (initObj.hasOwnProperty('service')) {
        this.service = initObj.service
      }
      else {
        this.service = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RequestServiceInfoRequest
    // Serialize message field [service]
    bufferOffset = _serializer.string(obj.service, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestServiceInfoRequest
    let len;
    let data = new RequestServiceInfoRequest(null);
    // Deserialize message field [service]
    data.service = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.service.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosserial_msgs/RequestServiceInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1cbcfa13b08f6d36710b9af8741e6112';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string service
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RequestServiceInfoRequest(null);
    if (msg.service !== undefined) {
      resolved.service = msg.service;
    }
    else {
      resolved.service = ''
    }

    return resolved;
    }
};

class RequestServiceInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.service_md5 = null;
      this.request_md5 = null;
      this.response_md5 = null;
    }
    else {
      if (initObj.hasOwnProperty('service_md5')) {
        this.service_md5 = initObj.service_md5
      }
      else {
        this.service_md5 = '';
      }
      if (initObj.hasOwnProperty('request_md5')) {
        this.request_md5 = initObj.request_md5
      }
      else {
        this.request_md5 = '';
      }
      if (initObj.hasOwnProperty('response_md5')) {
        this.response_md5 = initObj.response_md5
      }
      else {
        this.response_md5 = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RequestServiceInfoResponse
    // Serialize message field [service_md5]
    bufferOffset = _serializer.string(obj.service_md5, buffer, bufferOffset);
    // Serialize message field [request_md5]
    bufferOffset = _serializer.string(obj.request_md5, buffer, bufferOffset);
    // Serialize message field [response_md5]
    bufferOffset = _serializer.string(obj.response_md5, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestServiceInfoResponse
    let len;
    let data = new RequestServiceInfoResponse(null);
    // Deserialize message field [service_md5]
    data.service_md5 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [request_md5]
    data.request_md5 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [response_md5]
    data.response_md5 = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.service_md5.length;
    length += object.request_md5.length;
    length += object.response_md5.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosserial_msgs/RequestServiceInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c3d6dd25b909596479fbbc6559fa6874';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string service_md5
    string request_md5
    string response_md5
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RequestServiceInfoResponse(null);
    if (msg.service_md5 !== undefined) {
      resolved.service_md5 = msg.service_md5;
    }
    else {
      resolved.service_md5 = ''
    }

    if (msg.request_md5 !== undefined) {
      resolved.request_md5 = msg.request_md5;
    }
    else {
      resolved.request_md5 = ''
    }

    if (msg.response_md5 !== undefined) {
      resolved.response_md5 = msg.response_md5;
    }
    else {
      resolved.response_md5 = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: RequestServiceInfoRequest,
  Response: RequestServiceInfoResponse,
  md5sum() { return '0961604b984b94b0b68e8074882be071'; },
  datatype() { return 'rosserial_msgs/RequestServiceInfo'; }
};
