;; Auto-generated. Do not edit!


(when (boundp 'control_esc_v3::MsgControl)
  (if (not (find-package "CONTROL_ESC_V3"))
    (make-package "CONTROL_ESC_V3"))
  (shadow 'MsgControl (find-package "CONTROL_ESC_V3")))
(unless (find-package "CONTROL_ESC_V3::MSGCONTROL")
  (make-package "CONTROL_ESC_V3::MSGCONTROL"))

(in-package "ROS")
;;//! \htmlinclude MsgControl.msg.html


(defclass control_esc_v3::MsgControl
  :super ros::object
  :slots (_data ))

(defmethod control_esc_v3::MsgControl
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get control_esc_v3::MsgControl :md5sum-) "da5909fbe378aeaf85e547e830cc1bb7")
(setf (get control_esc_v3::MsgControl :datatype-) "control_esc_v3/MsgControl")
(setf (get control_esc_v3::MsgControl :definition-)
      "int32 data

")



(provide :control_esc_v3/MsgControl "da5909fbe378aeaf85e547e830cc1bb7")


