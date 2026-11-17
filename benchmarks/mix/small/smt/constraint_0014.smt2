(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -931) (= i1 -299) (= i1 -266) (= i1 467)))

; Formula constraint
(assert (=> (=> (>= i1 -51) (and (> -48 (* -11 i1)) (> (* 24 i1) i1))) (<= i1 i1)))

(check-sat)
(get-model)