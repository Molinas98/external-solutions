(define (minimumOfTwo input)
  (let* ((lines (string-split input #\newline))
         (array-len (string->number (list-ref lines 0)))
         (num-lines (cdr lines))
         (result (map (lambda (par)
                        (let* ((numbers (string-split par #\ )))
                          (let ((a (string->number (list-ref numbers 0))))
                            (let ((b (string->number (list-ref numbers 1))))
                              (number->string (if (> a b) (+ b) (+ a))))))) num-lines)))
    (string-join result " ")))

(define input "3
5 3
2 8
100 15")

(display (minimumOfTwo input))
(newline)
