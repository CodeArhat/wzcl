(eval-when (:COMPILE-TOPLEVEL :LOAD-TOPLEVEL :EXECUTE)
  (asdf:oos 'asdf:load-op 'buildnode-excel))

(defun simple-excel-test ()
  (excel:with-excel-workbook-file ("D:/demo.xls")
    (ss:worksheet `("ss:Name" "Sheet233")
                  (ss:table ()
                            (excel:set-index 2
                                             (ss:row ()
                                                     (excel:set-index 2 (ss:header-cell "Name"))
                                                     (ss:header-cell "Code")
                                                     (ss:header-cell "Salary")
                                                     (ss:header-cell "Date")))
                            (excel:set-index 3
                                             (ss:row ()
                                                     (excel:set-index 2 (ss:string-cell "����"))
                                                     (ss:string-cell "ak47")
                                                     (ss:currency-cell "123.45")
                                                     (ss:date-cell "2017-01-03")))
                            (loop for i from 4 to 10 do (excel:set-index i (ss:row () (excel:set-index i (ss:string-cell "**")))))
                            ))))