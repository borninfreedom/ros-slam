// Auto-generated. Do not edit!

// (in-package cartographer_ros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SubmapEntry = require('./SubmapEntry.js');

//-----------------------------------------------------------

class TrajectorySubmapList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.submap = null;
    }
    else {
      if (initObj.hasOwnProperty('submap')) {
        this.submap = initObj.submap
      }
      else {
        this.submap = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectorySubmapList
    // Serialize message field [submap]
    // Serialize the length for message field [submap]
    bufferOffset = _serializer.uint32(obj.submap.length, buffer, bufferOffset);
    obj.submap.forEach((val) => {
      bufferOffset = SubmapEntry.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectorySubmapList
    let len;
    let data = new TrajectorySubmapList(null);
    // Deserialize message field [submap]
    // Deserialize array length for message field [submap]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.submap = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.submap[i] = SubmapEntry.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 60 * object.submap.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cartographer_ros_msgs/TrajectorySubmapList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '408b96b1bf0386ee3f0562ab0ff3304a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Copyright 2016 The Cartographer Authors
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
    
    SubmapEntry[] submap
    
    ================================================================================
    MSG: cartographer_ros_msgs/SubmapEntry
    # Copyright 2016 The Cartographer Authors
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
    
    uint32 submap_version
    geometry_msgs/Pose pose
    
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
    const resolved = new TrajectorySubmapList(null);
    if (msg.submap !== undefined) {
      resolved.submap = new Array(msg.submap.length);
      for (let i = 0; i < resolved.submap.length; ++i) {
        resolved.submap[i] = SubmapEntry.Resolve(msg.submap[i]);
      }
    }
    else {
      resolved.submap = []
    }

    return resolved;
    }
};

module.exports = TrajectorySubmapList;
