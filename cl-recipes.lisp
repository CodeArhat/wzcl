(ql:quickload :caveman2)
(ql:quickload :cl-glut-examples)
(ql:quickload :cl-mysql)
(ql:quickload :cl-ppcre)
(ql:quickload :clsql-sqlite3)
(ql:quickload :drakma)
(ql:quickload :ironclad)
(ql:quickload :postmodern)
(ql:quickload :trivial-utf-8)
(ql:quickload :usocket)
(ql:quickload :uuid)

(defun compute-style-demo ()
  (print (loop for i from 1 to 100 sum i))
  (dotimes (i 10) (print (sin i))))

(defun random-demo ()
  (format t "random-integer: ~a~%" (loop repeat 10 collect (random 100)))
  (format t "random-float: ~a~%" (loop repeat 10 collect (random 5.0))))

(defun base64-demo ()
  )

(defun utf8-demo ()
  (let* ((ubs (trivial-utf-8:string-to-utf-8-bytes " 0Aa~中国"))
         (dst (trivial-utf-8:utf-8-bytes-to-string ubs)))
    (format t "~s <-> ~s~%" ubs dst)))

(defun file-demo ()
  (with-open-file (ifs "")))

(defun json-demo ()
  )

(defun xml-demo () 
  )

(defun regexp-demo ()
  (cl-ppcre:all-matches "(\\d+)" "192.168.1.17")
  (cl-ppcre:split "\\." "192.168.1.17"))

(defun process-demo ()
  )

(defun thread-demo ()
  )

(defun socket-demo ()
  )

(defun http-demo ()
  (drakma:http-request "https://www.common-lisp.net"))

(defun ftp-demo ()
  )

(defun telnet-demo ()
  )

(defun pgsql-demo ()
  (postmodern:with-connection '("dbtest" "ustest" "pgcl" "192.168.2.7")
    (postmodern:query "select * from t_test")))

(defun mysql-demo ()
  )

(defun sqlite3-demo ()
  )

(defun odbc-demo ()
  )

(defun png-demo ()
  )

(defun jpeg-demo ()
  )

(defun qrcode-demo ()
  )

(defun opengl-demo ()
  )

(defun uuid-demo ()
  (format t "~s ~s~%" (uuid:make-v1-uuid) (uuid:make-v4-uuid)))
