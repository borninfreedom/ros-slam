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

let StatusResponse = require('../msg/StatusResponse.js');

//-----------------------------------------------------------

class FinishTrajectoryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trajectory_id = null;
    }
    else {
      if (initObj.hasOwnProperty('trajectory_id')) {
        this.trajectory_id = initObj.trajectory_id
      }
      else {
        this.trajectory_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FinishTrajectoryRequest
    // Serialize message field [trajectory_id]
    bufferOffset = _serializer.int32(obj.trajectory_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FinishTrajectoryRequest
    let len;
    let data = new FinishTrajectoryRequest(null);
    // Deserialize message field [trajectory_id]
    data.trajectory_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cartographer_ros_msgs/FinishTrajectoryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e190c4be941828bcd09ea05053f4bb5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    int32 trajectory_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FinishTrajectoryRequest(null);
    if (msg.trajectory_id !== undefined) {
      resolved.trajectory_id = msg.trajectory_id;
    }
    else {
      resolved.trajectory_id = 0
    }

    return resolved;
    }
};

class FinishTrajectoryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new StatusResponse();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FinishTrajectoryResponse
    // Serialize message field [status]
    bufferOffset = StatusResponse.serialize(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FinishTrajectoryResponse
    let len;
    let data = new FinishTrajectoryResponse(null);
    // Deserialize message field [status]
    data.status = StatusResponse.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += StatusResponse.getMessageSize(object.status);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cartographer_ros_msgs/FinishTrajectoryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4e6ca4e44081fa06b258fa12804ea7cb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    cartographer_ros_msgs/StatusResponse status
    
    
    ================================================================================
    MSG: cartographer_ros_msgs/StatusResponse
    # Copyright 2018 The Cartographer Authors
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
    
    # A common message type to indicate the outcome of a service call.
    uint8 code
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FinishTrajectoryResponse(null);
    if (msg.status !== undefined) {
      resolved.status = StatusResponse.Resolve(msg.status)
    }
    else {
      resolved.status = new StatusResponse()
    }

    return resolved;
    }
};

module.exports = {
  Request: FinishTrajectoryRequest,
  Response: FinishTrajectoryResponse,
  md5sum() { return '0feba73841cb434875547ca2a563a021'; },
  datatype() { return 'cartographer_ros_msgs/FinishTrajectory'; }
};
