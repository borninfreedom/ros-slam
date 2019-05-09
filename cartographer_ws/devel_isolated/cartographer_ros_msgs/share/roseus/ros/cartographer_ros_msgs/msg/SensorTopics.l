;; Auto-generated. Do not edit!


(when (boundp 'cartographer_ros_msgs::SensorTopics)
  (if (not (find-package "CARTOGRAPHER_ROS_MSGS"))
    (make-package "CARTOGRAPHER_ROS_MSGS"))
  (shadow 'SensorTopics (find-package "CARTOGRAPHER_ROS_MSGS")))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::SENSORTOPICS")
  (make-package "CARTOGRAPHER_ROS_MSGS::SENSORTOPICS"))

(in-package "ROS")
;;//! \htmlinclude SensorTopics.msg.html


(defclass cartographer_ros_msgs::SensorTopics
  :super ros::object
  :slots (_laser_scan_topic _multi_echo_laser_scan_topic _point_cloud2_topic _imu_topic _odometry_topic _nav_sat_fix_topic _landmark_topic ))

(defmethod cartographer_ros_msgs::SensorTopics
  (:init
   (&key
    ((:laser_scan_topic __laser_scan_topic) "")
    ((:multi_echo_laser_scan_topic __multi_echo_laser_scan_topic) "")
    ((:point_cloud2_topic __point_cloud2_topic) "")
    ((:imu_topic __imu_topic) "")
    ((:odometry_topic __odometry_topic) "")
    ((:nav_sat_fix_topic __nav_sat_fix_topic) "")
    ((:landmark_topic __landmark_topic) "")
    )
   (send-super :init)
   (setq _laser_scan_topic (string __laser_scan_topic))
   (setq _multi_echo_laser_scan_topic (string __multi_echo_laser_scan_topic))
   (setq _point_cloud2_topic (string __point_cloud2_topic))
   (setq _imu_topic (string __imu_topic))
   (setq _odometry_topic (string __odometry_topic))
   (setq _nav_sat_fix_topic (string __nav_sat_fix_topic))
   (setq _landmark_topic (string __landmark_topic))
   self)
  (:laser_scan_topic
   (&optional __laser_scan_topic)
   (if __laser_scan_topic (setq _laser_scan_topic __laser_scan_topic)) _laser_scan_topic)
  (:multi_echo_laser_scan_topic
   (&optional __multi_echo_laser_scan_topic)
   (if __multi_echo_laser_scan_topic (setq _multi_echo_laser_scan_topic __multi_echo_laser_scan_topic)) _multi_echo_laser_scan_topic)
  (:point_cloud2_topic
   (&optional __point_cloud2_topic)
   (if __point_cloud2_topic (setq _point_cloud2_topic __point_cloud2_topic)) _point_cloud2_topic)
  (:imu_topic
   (&optional __imu_topic)
   (if __imu_topic (setq _imu_topic __imu_topic)) _imu_topic)
  (:odometry_topic
   (&optional __odometry_topic)
   (if __odometry_topic (setq _odometry_topic __odometry_topic)) _odometry_topic)
  (:nav_sat_fix_topic
   (&optional __nav_sat_fix_topic)
   (if __nav_sat_fix_topic (setq _nav_sat_fix_topic __nav_sat_fix_topic)) _nav_sat_fix_topic)
  (:landmark_topic
   (&optional __landmark_topic)
   (if __landmark_topic (setq _landmark_topic __landmark_topic)) _landmark_topic)
  (:serialization-length
   ()
   (+
    ;; string _laser_scan_topic
    4 (length _laser_scan_topic)
    ;; string _multi_echo_laser_scan_topic
    4 (length _multi_echo_laser_scan_topic)
    ;; string _point_cloud2_topic
    4 (length _point_cloud2_topic)
    ;; string _imu_topic
    4 (length _imu_topic)
    ;; string _odometry_topic
    4 (length _odometry_topic)
    ;; string _nav_sat_fix_topic
    4 (length _nav_sat_fix_topic)
    ;; string _landmark_topic
    4 (length _landmark_topic)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _laser_scan_topic
       (write-long (length _laser_scan_topic) s) (princ _laser_scan_topic s)
     ;; string _multi_echo_laser_scan_topic
       (write-long (length _multi_echo_laser_scan_topic) s) (princ _multi_echo_laser_scan_topic s)
     ;; string _point_cloud2_topic
       (write-long (length _point_cloud2_topic) s) (princ _point_cloud2_topic s)
     ;; string _imu_topic
       (write-long (length _imu_topic) s) (princ _imu_topic s)
     ;; string _odometry_topic
       (write-long (length _odometry_topic) s) (princ _odometry_topic s)
     ;; string _nav_sat_fix_topic
       (write-long (length _nav_sat_fix_topic) s) (princ _nav_sat_fix_topic s)
     ;; string _landmark_topic
       (write-long (length _landmark_topic) s) (princ _landmark_topic s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _laser_scan_topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _laser_scan_topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _multi_echo_laser_scan_topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _multi_echo_laser_scan_topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _point_cloud2_topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _point_cloud2_topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _imu_topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _imu_topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _odometry_topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _odometry_topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _nav_sat_fix_topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _nav_sat_fix_topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _landmark_topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _landmark_topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get cartographer_ros_msgs::SensorTopics :md5sum-) "bafbff7d66e3eeeb8d4a9195096cba08")
(setf (get cartographer_ros_msgs::SensorTopics :datatype-) "cartographer_ros_msgs/SensorTopics")
(setf (get cartographer_ros_msgs::SensorTopics :definition-)
      "# Copyright 2016 The Cartographer Authors
#
# Licensed under the Apache License, Version 2.0 (the \"License\");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
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

")



(provide :cartographer_ros_msgs/SensorTopics "bafbff7d66e3eeeb8d4a9195096cba08")


