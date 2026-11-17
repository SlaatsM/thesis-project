(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -423) (= i1 581) (= i1 589) (= i1 797) (= i1 926)))

; Formula constraint
(assert (and (> (* 90 i1) (- i1 (+ (* -7 i1) i1))) (or (=> (> (- 8 i1) i1) (<= (+ 32 -51) (* 49 i1))) (<= i1 -5))))

(check-sat)
(get-model)