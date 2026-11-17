(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-8164, 25220] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 16))
(declare-const i2 (_ BitVec 16))

; Domain constraints
(assert (or (= i1 #b1111110110111010) (= i1 #b0000000111101001) (= i1 #b0000001001001010)))
(assert (and (bvsge i2 #b1111111011000110) (bvsle i2 #b0000001111001010)))

; Formula constraint
(assert (bvsge i2 (bvmul #b0000000000011010 i2)))

(check-sat)