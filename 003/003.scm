(define (sum-array input)
  (let* ((lines (string-split input #\newline))
         (array-len (string->number (list-ref lines 0)))
         (num-lines (cdr lines))
         (result (map (lambda (par)
                        (let* ((numbers (string-split par #\ )))
                          (let ((a (string->number (list-ref numbers 0))))
                            (let ((b (string->number (list-ref numbers 1))))
                              (number->string (+ a b)))))) num-lines)))
    (string-join result " ")))

(define input "3
100 8
15 245
1945 54")

(display (sum-array input))
(newline)
