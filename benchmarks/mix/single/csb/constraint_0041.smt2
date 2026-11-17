(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-36960, 1152] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (and (bvsge i1 #b11111111111110100) (bvsle i1 #b00000000110000001)))

; Formula constraint
(assert (and (=> (bvsle #b00000000000000100 i1) (=> (bvsge #b00000000000010101 #b00000000000100011) (not (= (bvmul #b11111111110110100 i1) i1)))) (= (bvmul #b11111111110100000 i1) i1)))

(check-sat)