(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-32338, 63864] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))
(declare-const i2 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b11111111110010111) (= i1 #b00000000010111000) (= i1 #b00000001000110110) (= i1 #b00000001101110111)))
(assert (or (and (bvsge i2 #b11111110010101101) (bvsle i2 #b11111110100000000)) (= i2 #b00000000011001110)))

; Formula constraint
(assert (bvsge (bvmul #b00000000000100110 i2) (bvmul #b00000000001001000 i1)))

(check-sat)