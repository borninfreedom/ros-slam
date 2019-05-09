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
let SubmapTexture = require('../msg/SubmapTexture.js');

//-----------------------------------------------------------

class SubmapQueryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trajectory_id = null;
      this.submap_index = null;
    }
    else {
      if (initObj.hasOwnProperty('trajectory_id')) {
        this.trajectory_id = initObj.trajectory_id
      }
      else {
        this.trajectory_id = 0;
      }
      if (initObj.hasOwnProperty('submap_index')) {
        this.submap_index = initObj.submap_index
      }
      else {
        this.submap_index = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SubmapQueryRequest
    // Serialize message field [trajectory_id]
    bufferOffset = _serializer.int32(obj.trajectory_id, buffer, bufferOffset);
    // Serialize message field [submap_index]
    bufferOffset = _serializer.int32(obj.submap_index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubmapQueryRequest
    let len;
    let data = new SubmapQueryRequest(null);
    // Deserialize message field [trajectory_id]
    data.trajectory_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [submap_index]
    data.submap_index = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cartographer_ros_msgs/SubmapQueryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5fc429a478a6d73822616720a31a2158';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    int32 trajectory_id
    int32 submap_index
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SubmapQueryRequest(null);
    if (msg.trajectory_id !== undefined) {
      resolved.trajectory_id = msg.trajectory_id;
    }
    else {
      resolved.trajectory_id = 0
    }

    if (msg.submap_index !== undefined) {
      resolved.submap_index = msg.submap_index;
    }
    else {
      resolved.submap_index = 0
    }

    return resolved;
    }
};

class SubmapQueryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.submap_version = null;
      this.textures = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new StatusResponse();
      }
      if (initObj.hasOwnProperty('submap_version')) {
        this.submap_version = initObj.submap_version
      }
      else {
        this.submap_version = 0;
      }
      if (initObj.hasOwnProperty('textures')) {
        this.textures = initObj.textures
      }
      else {
        this.textures = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SubmapQueryResponse
    // Serialize message field [status]
    bufferOffset = StatusResponse.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [submap_version]
    bufferOffset = _serializer.int32(obj.submap_version, buffer, bufferOffset);
    // Serialize message field [textures]
    // Serialize the length for message field [textures]
    bufferOffset = _serializer.uint32(obj.textures.length, buffer, bufferOffset);
    obj.textures.forEach((val) => {
      bufferOffset = SubmapTexture.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubmapQueryResponse
    let len;
    let data = new SubmapQueryResponse(null);
    // Deserialize message field [status]
    data.status = StatusResponse.deserialize(buffer, bufferOffset);
    // Deserialize message field [submap_version]
    data.submap_version = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [textures]
    // Deserialize array length for message field [textures]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.textures = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.textures[i] = SubmapTexture.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += StatusResponse.getMessageSize(object.status);
    object.textures.forEach((val) => {
      length += SubmapTexture.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cartographer_ros_msgs/SubmapQueryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ffc82c14b81fa551bc249c31ba402b2e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    cartographer_ros_msgs/StatusResponse status
    int32 submap_version
    cartographer_ros_msgs/SubmapTexture[] textures
    
    
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
    
    ================================================================================
    MSG: cartographer_ros_msgs/SubmapTexture
    # Copyright 2017 The Cartographer Authors
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
    
    uint8[] cells
    int32 width
    int32 height
    float64 resolution
    geometry_msgs/Pose slice_pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SubmapQueryResponse(null);
    if (msg.status !== undefined) {
      resolved.status = StatusResponse.Resolve(msg.status)
    }
    else {
      resolved.status = new StatusResponse()
    }

    if (msg.submap_version !== undefined) {
      resolved.submap_version = msg.submap_version;
    }
    else {
      resolved.submap_version = 0
    }

    if (msg.textures !== undefined) {
      resolved.textures = new Array(msg.textures.length);
      for (let i = 0; i < resolved.textures.length; ++i) {
        resolved.textures[i] = SubmapTexture.Resolve(msg.textures[i]);
      }
    }
    else {
      resolved.textures = []
    }

    return resolved;
    }
};

module.exports = {
  Request: SubmapQueryRequest,
  Response: SubmapQueryResponse,
  md5sum() { return 'd39f26c172921775c4ad99dbf7cb0792'; },
  datatype() { return 'cartographer_ros_msgs/SubmapQuery'; }
};
