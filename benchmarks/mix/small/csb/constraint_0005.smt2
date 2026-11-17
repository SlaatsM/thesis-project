(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-831, -41] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b10011000001) (and (bvsge i1 #b10101001000) (bvsle i1 #b11111000000)) (= i1 #b11111010111)))

; Formula constraint
(assert (bvsgt i1 #b11110101100))

(check-sat)