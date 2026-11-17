(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-62, 53922] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b00000000000000000) (and (bvsge i1 #b00000000001001101) (bvsle i1 #b00000000110111000)) (= i1 #b00000001110110010)))

; Formula constraint
(assert (=> (bvsge i1 #b11111111111000010) (bvsle (bvmul #b00000000000111001 i1) i1)))

(check-sat)