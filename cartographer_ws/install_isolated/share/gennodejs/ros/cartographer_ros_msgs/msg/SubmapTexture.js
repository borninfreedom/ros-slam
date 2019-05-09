// Auto-generated. Do not edit!

// (in-package cartographer_ros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class SubmapTexture {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cells = null;
      this.width = null;
      this.height = null;
      this.resolution = null;
      this.slice_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('cells')) {
        this.cells = initObj.cells
      }
      else {
        this.cells = [];
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('resolution')) {
        this.resolution = initObj.resolution
      }
      else {
        this.resolution = 0.0;
      }
      if (initObj.hasOwnProperty('slice_pose')) {
        this.slice_pose = initObj.slice_pose
      }
      else {
        this.slice_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SubmapTexture
    // Serialize message field [cells]
    bufferOffset = _arraySerializer.uint8(obj.cells, buffer, bufferOffset, null);
    // Serialize message field [width]
    bufferOffset = _serializer.int32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.int32(obj.height, buffer, bufferOffset);
    // Serialize message field [resolution]
    bufferOffset = _serializer.float64(obj.resolution, buffer, bufferOffset);
    // Serialize message field [slice_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.slice_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubmapTexture
    let len;
    let data = new SubmapTexture(null);
    // Deserialize message field [cells]
    data.cells = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [width]
    data.width = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [resolution]
    data.resolution = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [slice_pose]
    data.slice_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.cells.length;
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cartographer_ros_msgs/SubmapTexture';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '26187fc048d2d8e578b6c781f3b53158';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SubmapTexture(null);
    if (msg.cells !== undefined) {
      resolved.cells = msg.cells;
    }
    else {
      resolved.cells = []
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.resolution !== undefined) {
      resolved.resolution = msg.resolution;
    }
    else {
      resolved.resolution = 0.0
    }

    if (msg.slice_pose !== undefined) {
      resolved.slice_pose = geometry_msgs.msg.Pose.Resolve(msg.slice_pose)
    }
    else {
      resolved.slice_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = SubmapTexture;
