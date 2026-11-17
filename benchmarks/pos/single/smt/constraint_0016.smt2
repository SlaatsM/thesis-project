(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (or (= i1 514) (= i1 671) (= i1 911)))
(assert (and (<= 562 i2) (<= i2 895)))

; Formula constraint
(assert (and (and (or (= (- (* -77 i2) i1) -15) (= i2 i1)) (< 22 i2)) (and (and (< (- i1 i1) i1) (<= (* -37 i2) i2)) (not (= (* 0 i2) (- i2 -79))))))

(check-sat)
(get-model)