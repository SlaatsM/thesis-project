(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -997) (= i1 -750) (= i1 -64) (= i1 134) (= i1 752)))

; Formula constraint
(assert (or (=> (=> (> i1 43) (= (* -99 i1) -48)) (and (not (= i1 78)) (>= (* -74 i1) (+ i1 i1)))) (and (and (< 8 -19) (not (= (- (+ -7 i1) i1) 72))) (< (- (+ (* -3 i1) 53) i1) i1))))

(check-sat)
(get-model)