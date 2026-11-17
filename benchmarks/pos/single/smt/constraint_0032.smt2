(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (or (= i1 86) (and (<= 254 i1) (<= i1 802)) (= i1 873)))
(assert (or (= i2 81) (= i2 206) (= i2 786)))

; Formula constraint
(assert (and (=> (>= i2 -27) (and (not (= (+ -33 (* 67 i2)) 31)) (>= -64 -82))) (and (not (> (* 8 i1) i2)) (< (* -74 i1) (* 52 i1)))))

(check-sat)
(get-model)