(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-17914, 25970] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 16))
(declare-const i2 (_ BitVec 16))

; Domain constraints
(assert (or (= i1 #b1111111000010110) (= i1 #b1111111101111011) (= i1 #b0000000001010000) (= i1 #b0000000101010010)))
(assert (or (= i2 #b1111111010101010) (= i2 #b1111111101111100) (= i2 #b0000000111111101)))

; Formula constraint
(assert (and (not (bvsge i2 i1)) (and (or (= #b0000000000000110 #b1111111111110010) (bvsle i2 #b0000000001001100)) (bvslt i1 (bvmul #b1111111111001011 i1)))))

(check-sat)