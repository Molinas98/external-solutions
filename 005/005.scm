(define (minimumOfThree input)
  (let* ((lines (string-split input #\newline))
         (array-len (string->number (list-ref lines 0)))
         (num-lines (cdr lines))
         (result (map (lambda (line)
                        (let* ((numbers (string-split line #\ )))
                          (let ((a (string->number (list-ref numbers 0))))
                            (let ((b (string->number (list-ref numbers 1))))
                              (let ((c (string->number (list-ref numbers 2))))
                                (number->string (if (and (< a b) (< a c)) (+ a) (if (and (< b a) (< b c)) (+ b) (+ c))))))))) num-lines)))
    (string-join result " ")))

(define input "3
7 3 5
15 20 40
300 550 137")

(display (minimumOfThree input))
(newline)
