(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 128) (= i1 169) (= i1 244) (= i1 717)))

; Formula constraint
(assert (and (=> (and (not (= 66 64)) (= -6 1)) (and (> -94 i1) (= i1 19))) (=> (<= -42 (+ i1 i1)) (< (- i1 (+ i1 i1)) 21))))

(check-sat)
(get-model)