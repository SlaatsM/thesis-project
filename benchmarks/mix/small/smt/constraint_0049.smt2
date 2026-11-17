(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -911) (= i1 -439) (= i1 17) (= i1 738) (= i1 927)))

; Formula constraint
(assert (=> (=> (not (= -31 -64)) (and (<= (* 92 i1) 44) (not (= (- (* 51 i1) 80) 1)))) (not (not (= 92 i1)))))

(check-sat)
(get-model)