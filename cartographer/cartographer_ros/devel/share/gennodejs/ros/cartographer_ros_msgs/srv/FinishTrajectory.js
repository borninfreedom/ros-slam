// Auto-generated. Do not edit!

// (in-package cartographer_ros_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class FinishTrajectoryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stem = null;
    }
    else {
      if (initObj.hasOwnProperty('stem')) {
        this.stem = initObj.stem
      }
      else {
        this.stem = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FinishTrajectoryRequest
    // Serialize message field [stem]
    bufferOffset = _serializer.string(obj.stem, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FinishTrajectoryRequest
    let len;
    let data = new FinishTrajectoryRequest(null);
    // Deserialize message field [stem]
    data.stem = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.stem.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cartographer_ros_msgs/FinishTrajectoryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1ca78fe806c5256bb03c4e35886127f9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    string stem
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FinishTrajectoryRequest(null);
    if (msg.stem !== undefined) {
      resolved.stem = msg.stem;
    }
    else {
      resolved.stem = ''
    }

    return resolved;
    }
};

class FinishTrajectoryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FinishTrajectoryResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FinishTrajectoryResponse
    let len;
    let data = new FinishTrajectoryResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cartographer_ros_msgs/FinishTrajectoryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FinishTrajectoryResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: FinishTrajectoryRequest,
  Response: FinishTrajectoryResponse,
  md5sum() { return '1ca78fe806c5256bb03c4e35886127f9'; },
  datatype() { return 'cartographer_ros_msgs/FinishTrajectory'; }
};
