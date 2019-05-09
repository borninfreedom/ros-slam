; Auto-generated. Do not edit!


(cl:in-package cartographer_ros_msgs-msg)


;//! \htmlinclude TrajectoryOptions.msg.html

(cl:defclass <TrajectoryOptions> (roslisp-msg-protocol:ros-message)
  ((tracking_frame
    :reader tracking_frame
    :initarg :tracking_frame
    :type cl:string
    :initform "")
   (published_frame
    :reader published_frame
    :initarg :published_frame
    :type cl:string
    :initform "")
   (odom_frame
    :reader odom_frame
    :initarg :odom_frame
    :type cl:string
    :initform "")
   (provide_odom_frame
    :reader provide_odom_frame
    :initarg :provide_odom_frame
    :type cl:boolean
    :initform cl:nil)
   (use_odometry
    :reader use_odometry
    :initarg :use_odometry
    :type cl:boolean
    :initform cl:nil)
   (use_nav_sat
    :reader use_nav_sat
    :initarg :use_nav_sat
    :type cl:boolean
    :initform cl:nil)
   (use_landmarks
    :reader use_landmarks
    :initarg :use_landmarks
    :type cl:boolean
    :initform cl:nil)
   (publish_frame_projected_to_2d
    :reader publish_frame_projected_to_2d
    :initarg :publish_frame_projected_to_2d
    :type cl:boolean
    :initform cl:nil)
   (num_laser_scans
    :reader num_laser_scans
    :initarg :num_laser_scans
    :type cl:integer
    :initform 0)
   (num_multi_echo_laser_scans
    :reader num_multi_echo_laser_scans
    :initarg :num_multi_echo_laser_scans
    :type cl:integer
    :initform 0)
   (num_subdivisions_per_laser_scan
    :reader num_subdivisions_per_laser_scan
    :initarg :num_subdivisions_per_laser_scan
    :type cl:integer
    :initform 0)
   (num_point_clouds
    :reader num_point_clouds
    :initarg :num_point_clouds
    :type cl:integer
    :initform 0)
   (rangefinder_sampling_ratio
    :reader rangefinder_sampling_ratio
    :initarg :rangefinder_sampling_ratio
    :type cl:float
    :initform 0.0)
   (odometry_sampling_ratio
    :reader odometry_sampling_ratio
    :initarg :odometry_sampling_ratio
    :type cl:float
    :initform 0.0)
   (fixed_frame_pose_sampling_ratio
    :reader fixed_frame_pose_sampling_ratio
    :initarg :fixed_frame_pose_sampling_ratio
    :type cl:float
    :initform 0.0)
   (imu_sampling_ratio
    :reader imu_sampling_ratio
    :initarg :imu_sampling_ratio
    :type cl:float
    :initform 0.0)
   (landmarks_sampling_ratio
    :reader landmarks_sampling_ratio
    :initarg :landmarks_sampling_ratio
    :type cl:float
    :initform 0.0)
   (trajectory_builder_options_proto
    :reader trajectory_builder_options_proto
    :initarg :trajectory_builder_options_proto
    :type cl:string
    :initform ""))
)

(cl:defclass TrajectoryOptions (<TrajectoryOptions>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryOptions>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryOptions)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartographer_ros_msgs-msg:<TrajectoryOptions> is deprecated: use cartographer_ros_msgs-msg:TrajectoryOptions instead.")))

(cl:ensure-generic-function 'tracking_frame-val :lambda-list '(m))
(cl:defmethod tracking_frame-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:tracking_frame-val is deprecated.  Use cartographer_ros_msgs-msg:tracking_frame instead.")
  (tracking_frame m))

(cl:ensure-generic-function 'published_frame-val :lambda-list '(m))
(cl:defmethod published_frame-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:published_frame-val is deprecated.  Use cartographer_ros_msgs-msg:published_frame instead.")
  (published_frame m))

(cl:ensure-generic-function 'odom_frame-val :lambda-list '(m))
(cl:defmethod odom_frame-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:odom_frame-val is deprecated.  Use cartographer_ros_msgs-msg:odom_frame instead.")
  (odom_frame m))

(cl:ensure-generic-function 'provide_odom_frame-val :lambda-list '(m))
(cl:defmethod provide_odom_frame-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:provide_odom_frame-val is deprecated.  Use cartographer_ros_msgs-msg:provide_odom_frame instead.")
  (provide_odom_frame m))

(cl:ensure-generic-function 'use_odometry-val :lambda-list '(m))
(cl:defmethod use_odometry-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:use_odometry-val is deprecated.  Use cartographer_ros_msgs-msg:use_odometry instead.")
  (use_odometry m))

(cl:ensure-generic-function 'use_nav_sat-val :lambda-list '(m))
(cl:defmethod use_nav_sat-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:use_nav_sat-val is deprecated.  Use cartographer_ros_msgs-msg:use_nav_sat instead.")
  (use_nav_sat m))

(cl:ensure-generic-function 'use_landmarks-val :lambda-list '(m))
(cl:defmethod use_landmarks-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:use_landmarks-val is deprecated.  Use cartographer_ros_msgs-msg:use_landmarks instead.")
  (use_landmarks m))

(cl:ensure-generic-function 'publish_frame_projected_to_2d-val :lambda-list '(m))
(cl:defmethod publish_frame_projected_to_2d-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:publish_frame_projected_to_2d-val is deprecated.  Use cartographer_ros_msgs-msg:publish_frame_projected_to_2d instead.")
  (publish_frame_projected_to_2d m))

(cl:ensure-generic-function 'num_laser_scans-val :lambda-list '(m))
(cl:defmethod num_laser_scans-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:num_laser_scans-val is deprecated.  Use cartographer_ros_msgs-msg:num_laser_scans instead.")
  (num_laser_scans m))

(cl:ensure-generic-function 'num_multi_echo_laser_scans-val :lambda-list '(m))
(cl:defmethod num_multi_echo_laser_scans-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:num_multi_echo_laser_scans-val is deprecated.  Use cartographer_ros_msgs-msg:num_multi_echo_laser_scans instead.")
  (num_multi_echo_laser_scans m))

(cl:ensure-generic-function 'num_subdivisions_per_laser_scan-val :lambda-list '(m))
(cl:defmethod num_subdivisions_per_laser_scan-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:num_subdivisions_per_laser_scan-val is deprecated.  Use cartographer_ros_msgs-msg:num_subdivisions_per_laser_scan instead.")
  (num_subdivisions_per_laser_scan m))

(cl:ensure-generic-function 'num_point_clouds-val :lambda-list '(m))
(cl:defmethod num_point_clouds-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:num_point_clouds-val is deprecated.  Use cartographer_ros_msgs-msg:num_point_clouds instead.")
  (num_point_clouds m))

(cl:ensure-generic-function 'rangefinder_sampling_ratio-val :lambda-list '(m))
(cl:defmethod rangefinder_sampling_ratio-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:rangefinder_sampling_ratio-val is deprecated.  Use cartographer_ros_msgs-msg:rangefinder_sampling_ratio instead.")
  (rangefinder_sampling_ratio m))

(cl:ensure-generic-function 'odometry_sampling_ratio-val :lambda-list '(m))
(cl:defmethod odometry_sampling_ratio-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:odometry_sampling_ratio-val is deprecated.  Use cartographer_ros_msgs-msg:odometry_sampling_ratio instead.")
  (odometry_sampling_ratio m))

(cl:ensure-generic-function 'fixed_frame_pose_sampling_ratio-val :lambda-list '(m))
(cl:defmethod fixed_frame_pose_sampling_ratio-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:fixed_frame_pose_sampling_ratio-val is deprecated.  Use cartographer_ros_msgs-msg:fixed_frame_pose_sampling_ratio instead.")
  (fixed_frame_pose_sampling_ratio m))

(cl:ensure-generic-function 'imu_sampling_ratio-val :lambda-list '(m))
(cl:defmethod imu_sampling_ratio-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:imu_sampling_ratio-val is deprecated.  Use cartographer_ros_msgs-msg:imu_sampling_ratio instead.")
  (imu_sampling_ratio m))

(cl:ensure-generic-function 'landmarks_sampling_ratio-val :lambda-list '(m))
(cl:defmethod landmarks_sampling_ratio-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:landmarks_sampling_ratio-val is deprecated.  Use cartographer_ros_msgs-msg:landmarks_sampling_ratio instead.")
  (landmarks_sampling_ratio m))

(cl:ensure-generic-function 'trajectory_builder_options_proto-val :lambda-list '(m))
(cl:defmethod trajectory_builder_options_proto-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:trajectory_builder_options_proto-val is deprecated.  Use cartographer_ros_msgs-msg:trajectory_builder_options_proto instead.")
  (trajectory_builder_options_proto m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryOptions>) ostream)
  "Serializes a message object of type '<TrajectoryOptions>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tracking_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tracking_frame))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'published_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'published_frame))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'odom_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'odom_frame))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'provide_odom_frame) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_odometry) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_nav_sat) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_landmarks) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'publish_frame_projected_to_2d) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'num_laser_scans)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_multi_echo_laser_scans)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_subdivisions_per_laser_scan)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_point_clouds)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rangefinder_sampling_ratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'odometry_sampling_ratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fixed_frame_pose_sampling_ratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'imu_sampling_ratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'landmarks_sampling_ratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'trajectory_builder_options_proto))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'trajectory_builder_options_proto))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryOptions>) istream)
  "Deserializes a message object of type '<TrajectoryOptions>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tracking_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tracking_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'published_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'published_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'odom_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'odom_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'provide_odom_frame) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'use_odometry) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'use_nav_sat) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'use_landmarks) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'publish_frame_projected_to_2d) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_laser_scans) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_multi_echo_laser_scans) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_subdivisions_per_laser_scan) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_point_clouds) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rangefinder_sampling_ratio) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'odometry_sampling_ratio) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fixed_frame_pose_sampling_ratio) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'imu_sampling_ratio) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'landmarks_sampling_ratio) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trajectory_builder_options_proto) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'trajectory_builder_options_proto) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryOptions>)))
  "Returns string type for a message object of type '<TrajectoryOptions>"
  "cartographer_ros_msgs/TrajectoryOptions")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryOptions)))
  "Returns string type for a message object of type 'TrajectoryOptions"
  "cartographer_ros_msgs/TrajectoryOptions")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryOptions>)))
  "Returns md5sum for a message object of type '<TrajectoryOptions>"
  "7eda9b62c16c18fa1563587e73501e47")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryOptions)))
  "Returns md5sum for a message object of type 'TrajectoryOptions"
  "7eda9b62c16c18fa1563587e73501e47")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryOptions>)))
  "Returns full string definition for message of type '<TrajectoryOptions>"
  (cl:format cl:nil "# Copyright 2016 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%string tracking_frame~%string published_frame~%string odom_frame~%bool provide_odom_frame~%bool use_odometry~%bool use_nav_sat~%bool use_landmarks~%bool publish_frame_projected_to_2d~%int32 num_laser_scans~%int32 num_multi_echo_laser_scans~%int32 num_subdivisions_per_laser_scan~%int32 num_point_clouds~%float64 rangefinder_sampling_ratio~%float64 odometry_sampling_ratio~%float64 fixed_frame_pose_sampling_ratio~%float64 imu_sampling_ratio~%float64 landmarks_sampling_ratio~%~%# This is a binary-encoded~%# 'cartographer.mapping.proto.TrajectoryBuilderOptions' proto.~%string trajectory_builder_options_proto~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryOptions)))
  "Returns full string definition for message of type 'TrajectoryOptions"
  (cl:format cl:nil "# Copyright 2016 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%string tracking_frame~%string published_frame~%string odom_frame~%bool provide_odom_frame~%bool use_odometry~%bool use_nav_sat~%bool use_landmarks~%bool publish_frame_projected_to_2d~%int32 num_laser_scans~%int32 num_multi_echo_laser_scans~%int32 num_subdivisions_per_laser_scan~%int32 num_point_clouds~%float64 rangefinder_sampling_ratio~%float64 odometry_sampling_ratio~%float64 fixed_frame_pose_sampling_ratio~%float64 imu_sampling_ratio~%float64 landmarks_sampling_ratio~%~%# This is a binary-encoded~%# 'cartographer.mapping.proto.TrajectoryBuilderOptions' proto.~%string trajectory_builder_options_proto~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryOptions>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'tracking_frame))
     4 (cl:length (cl:slot-value msg 'published_frame))
     4 (cl:length (cl:slot-value msg 'odom_frame))
     1
     1
     1
     1
     1
     4
     4
     4
     4
     8
     8
     8
     8
     8
     4 (cl:length (cl:slot-value msg 'trajectory_builder_options_proto))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryOptions>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryOptions
    (cl:cons ':tracking_frame (tracking_frame msg))
    (cl:cons ':published_frame (published_frame msg))
    (cl:cons ':odom_frame (odom_frame msg))
    (cl:cons ':provide_odom_frame (provide_odom_frame msg))
    (cl:cons ':use_odometry (use_odometry msg))
    (cl:cons ':use_nav_sat (use_nav_sat msg))
    (cl:cons ':use_landmarks (use_landmarks msg))
    (cl:cons ':publish_frame_projected_to_2d (publish_frame_projected_to_2d msg))
    (cl:cons ':num_laser_scans (num_laser_scans msg))
    (cl:cons ':num_multi_echo_laser_scans (num_multi_echo_laser_scans msg))
    (cl:cons ':num_subdivisions_per_laser_scan (num_subdivisions_per_laser_scan msg))
    (cl:cons ':num_point_clouds (num_point_clouds msg))
    (cl:cons ':rangefinder_sampling_ratio (rangefinder_sampling_ratio msg))
    (cl:cons ':odometry_sampling_ratio (odometry_sampling_ratio msg))
    (cl:cons ':fixed_frame_pose_sampling_ratio (fixed_frame_pose_sampling_ratio msg))
    (cl:cons ':imu_sampling_ratio (imu_sampling_ratio msg))
    (cl:cons ':landmarks_sampling_ratio (landmarks_sampling_ratio msg))
    (cl:cons ':trajectory_builder_options_proto (trajectory_builder_options_proto msg))
))
