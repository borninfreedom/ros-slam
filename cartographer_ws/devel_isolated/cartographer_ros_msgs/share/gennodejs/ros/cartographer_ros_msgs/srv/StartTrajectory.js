// Auto-generated. Do not edit!

// (in-package cartographer_ros_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrajectoryOptions = require('../msg/TrajectoryOptions.js');
let SensorTopics = require('../msg/SensorTopics.js');

//-----------------------------------------------------------

let StatusResponse = require('../msg/StatusResponse.js');

//-----------------------------------------------------------

class StartTrajectoryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.options = null;
      this.topics = null;
    }
    else {
      if (initObj.hasOwnProperty('options')) {
        this.options = initObj.options
      }
      else {
        this.options = new TrajectoryOptions();
      }
      if (initObj.hasOwnProperty('topics')) {
        this.topics = initObj.topics
      }
      else {
        this.topics = new SensorTopics();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartTrajectoryRequest
    // Serialize message field [options]
    bufferOffset = TrajectoryOptions.serialize(obj.options, buffer, bufferOffset);
    // Serialize message field [topics]
    bufferOffset = SensorTopics.serialize(obj.topics, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartTrajectoryRequest
    let len;
    let data = new StartTrajectoryRequest(null);
    // Deserialize message field [options]
    data.options = TrajectoryOptions.deserialize(buffer, bufferOffset);
    // Deserialize message field [topics]
    data.topics = SensorTopics.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += TrajectoryOptions.getMessageSize(object.options);
    length += SensorTopics.getMessageSize(object.topics);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cartographer_ros_msgs/StartTrajectoryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0780da312468afe59b45454db35b17ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    cartographer_ros_msgs/TrajectoryOptions options
    cartographer_ros_msgs/SensorTopics topics
    
    ================================================================================
    MSG: cartographer_ros_msgs/TrajectoryOptions
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
    
    string tracking_frame
    string published_frame
    string odom_frame
    bool provide_odom_frame
    bool use_odometry
    bool use_nav_sat
    bool use_landmarks
    bool publish_frame_projected_to_2d
    int32 num_laser_scans
    int32 num_multi_echo_laser_scans
    int32 num_subdivisions_per_laser_scan
    int32 num_point_clouds
    float64 rangefinder_sampling_ratio
    float64 odometry_sampling_ratio
    float64 fixed_frame_pose_sampling_ratio
    float64 imu_sampling_ratio
    float64 landmarks_sampling_ratio
    
    # This is a binary-encoded
    # 'cartographer.mapping.proto.TrajectoryBuilderOptions' proto.
    string trajectory_builder_options_proto
    
    ================================================================================
    MSG: cartographer_ros_msgs/SensorTopics
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
    
    string laser_scan_topic
    string multi_echo_laser_scan_topic
    string point_cloud2_topic
    string imu_topic
    string odometry_topic
    string nav_sat_fix_topic
    string landmark_topic
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartTrajectoryRequest(null);
    if (msg.options !== undefined) {
      resolved.options = TrajectoryOptions.Resolve(msg.options)
    }
    else {
      resolved.options = new TrajectoryOptions()
    }

    if (msg.topics !== undefined) {
      resolved.topics = SensorTopics.Resolve(msg.topics)
    }
    else {
      resolved.topics = new SensorTopics()
    }

    return resolved;
    }
};

class StartTrajectoryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.trajectory_id = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new StatusResponse();
      }
      if (initObj.hasOwnProperty('trajectory_id')) {
        this.trajectory_id = initObj.trajectory_id
      }
      else {
        this.trajectory_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartTrajectoryResponse
    // Serialize message field [status]
    bufferOffset = StatusResponse.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [trajectory_id]
    bufferOffset = _serializer.int32(obj.trajectory_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartTrajectoryResponse
    let len;
    let data = new StartTrajectoryResponse(null);
    // Deserialize message field [status]
    data.status = StatusResponse.deserialize(buffer, bufferOffset);
    // Deserialize message field [trajectory_id]
    data.trajectory_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += StatusResponse.getMessageSize(object.status);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cartographer_ros_msgs/StartTrajectoryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a14602d76d9b734b374a25be319cdbe9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    cartographer_ros_msgs/StatusResponse status
    int32 trajectory_id
    
    
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
    const resolved = new StartTrajectoryResponse(null);
    if (msg.status !== undefined) {
      resolved.status = StatusResponse.Resolve(msg.status)
    }
    else {
      resolved.status = new StatusResponse()
    }

    if (msg.trajectory_id !== undefined) {
      resolved.trajectory_id = msg.trajectory_id;
    }
    else {
      resolved.trajectory_id = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: StartTrajectoryRequest,
  Response: StartTrajectoryResponse,
  md5sum() { return 'bed83613a1da70f1e83eafd765dad59d'; },
  datatype() { return 'cartographer_ros_msgs/StartTrajectory'; }
};
