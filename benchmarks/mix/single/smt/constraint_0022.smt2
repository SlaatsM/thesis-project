(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (and (<= -365 i1) (<= i1 358)))
(assert (or (= i2 -462) (= i2 -197) (= i2 -87) (= i2 80)))

; Formula constraint
(assert (or (not (=> (= -59 (+ i1 (- 44 i1))) (< (- (* -14 i1) 47) -20))) (= (+ (+ (* 2 i1) i2) (+ i1 i2)) 83)))

(check-sat)
(get-model)