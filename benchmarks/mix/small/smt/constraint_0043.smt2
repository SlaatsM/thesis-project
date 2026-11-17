(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -990) (= i1 162)))

; Formula constraint
(assert (=> (and (not (<= (- -51 i1) i1)) (and (< -24 86) (= 61 42))) (=> (=> (< 85 i1) (not (= -92 (- (* -78 i1) i1)))) (= -34 87))))

(check-sat)
(get-model)