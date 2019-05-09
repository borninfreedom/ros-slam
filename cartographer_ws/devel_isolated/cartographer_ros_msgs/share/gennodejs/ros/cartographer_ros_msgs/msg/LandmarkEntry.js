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

class LandmarkEntry {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.tracking_from_landmark_transform = null;
      this.translation_weight = null;
      this.rotation_weight = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('tracking_from_landmark_transform')) {
        this.tracking_from_landmark_transform = initObj.tracking_from_landmark_transform
      }
      else {
        this.tracking_from_landmark_transform = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('translation_weight')) {
        this.translation_weight = initObj.translation_weight
      }
      else {
        this.translation_weight = 0.0;
      }
      if (initObj.hasOwnProperty('rotation_weight')) {
        this.rotation_weight = initObj.rotation_weight
      }
      else {
        this.rotation_weight = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LandmarkEntry
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [tracking_from_landmark_transform]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.tracking_from_landmark_transform, buffer, bufferOffset);
    // Serialize message field [translation_weight]
    bufferOffset = _serializer.float64(obj.translation_weight, buffer, bufferOffset);
    // Serialize message field [rotation_weight]
    bufferOffset = _serializer.float64(obj.rotation_weight, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LandmarkEntry
    let len;
    let data = new LandmarkEntry(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [tracking_from_landmark_transform]
    data.tracking_from_landmark_transform = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [translation_weight]
    data.translation_weight = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rotation_weight]
    data.rotation_weight = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cartographer_ros_msgs/LandmarkEntry';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '133f8dd7259f83a87eb4d78b301c0b70';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 2018 The Cartographer Authors
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
    
    string id
    geometry_msgs/Pose tracking_from_landmark_transform
    float64 translation_weight
    float64 rotation_weight
    
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
    const resolved = new LandmarkEntry(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.tracking_from_landmark_transform !== undefined) {
      resolved.tracking_from_landmark_transform = geometry_msgs.msg.Pose.Resolve(msg.tracking_from_landmark_transform)
    }
    else {
      resolved.tracking_from_landmark_transform = new geometry_msgs.msg.Pose()
    }

    if (msg.translation_weight !== undefined) {
      resolved.translation_weight = msg.translation_weight;
    }
    else {
      resolved.translation_weight = 0.0
    }

    if (msg.rotation_weight !== undefined) {
      resolved.rotation_weight = msg.rotation_weight;
    }
    else {
      resolved.rotation_weight = 0.0
    }

    return resolved;
    }
};

module.exports = LandmarkEntry;
