;; Auto-generated. Do not edit!


(when (boundp 'project5::OddEvenCheck)
  (if (not (find-package "PROJECT5"))
    (make-package "PROJECT5"))
  (shadow 'OddEvenCheck (find-package "PROJECT5")))
(unless (find-package "PROJECT5::ODDEVENCHECK")
  (make-package "PROJECT5::ODDEVENCHECK"))
(unless (find-package "PROJECT5::ODDEVENCHECKREQUEST")
  (make-package "PROJECT5::ODDEVENCHECKREQUEST"))
(unless (find-package "PROJECT5::ODDEVENCHECKRESPONSE")
  (make-package "PROJECT5::ODDEVENCHECKRESPONSE"))

(in-package "ROS")





(defclass project5::OddEvenCheckRequest
  :super ros::object
  :slots (_number ))

(defmethod project5::OddEvenCheckRequest
  (:init
   (&key
    ((:number __number) 0)
    )
   (send-super :init)
   (setq _number (round __number))
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:serialization-length
   ()
   (+
    ;; int32 _number
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _number
       (write-long _number s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _number
     (setq _number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass project5::OddEvenCheckResponse
  :super ros::object
  :slots (_answer ))

(defmethod project5::OddEvenCheckResponse
  (:init
   (&key
    ((:answer __answer) "")
    )
   (send-super :init)
   (setq _answer (string __answer))
   self)
  (:answer
   (&optional __answer)
   (if __answer (setq _answer __answer)) _answer)
  (:serialization-length
   ()
   (+
    ;; string _answer
    4 (length _answer)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _answer
       (write-long (length _answer) s) (princ _answer s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _answer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _answer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass project5::OddEvenCheck
  :super ros::object
  :slots ())

(setf (get project5::OddEvenCheck :md5sum-) "4ff0b0ab1ed04611e3a2b4090af9ee4f")
(setf (get project5::OddEvenCheck :datatype-) "project5/OddEvenCheck")
(setf (get project5::OddEvenCheck :request) project5::OddEvenCheckRequest)
(setf (get project5::OddEvenCheck :response) project5::OddEvenCheckResponse)

(defmethod project5::OddEvenCheckRequest
  (:response () (instance project5::OddEvenCheckResponse :init)))

(setf (get project5::OddEvenCheckRequest :md5sum-) "4ff0b0ab1ed04611e3a2b4090af9ee4f")
(setf (get project5::OddEvenCheckRequest :datatype-) "project5/OddEvenCheckRequest")
(setf (get project5::OddEvenCheckRequest :definition-)
      "int32 number
---
string answer

")

(setf (get project5::OddEvenCheckResponse :md5sum-) "4ff0b0ab1ed04611e3a2b4090af9ee4f")
(setf (get project5::OddEvenCheckResponse :datatype-) "project5/OddEvenCheckResponse")
(setf (get project5::OddEvenCheckResponse :definition-)
      "int32 number
---
string answer

")



(provide :project5/OddEvenCheck "4ff0b0ab1ed04611e3a2b4090af9ee4f")


