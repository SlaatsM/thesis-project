(set-logic QF_BV)

; Bit width chosen: 13 (covers range [-2955, 3947] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 13))
(declare-const i2 (_ BitVec 13))

; Domain constraints
(assert (or (and (bvsge i1 #b1110110110001) (bvsle i1 #b1111101000110)) (= i1 #b0000110011111)))
(assert (or (= i2 #b1110010111010) (= i2 #b1110011000111) (= i2 #b1110101011010) (= i2 #b0001010010101) (= i2 #b0001111100000)))

; Formula constraint
(assert (and (bvsge (bvsub i2 i1) i1) (or (and (not (= #b1111111000110 #b1111111001001)) (bvslt #b0000000000010 #b1111110011101)) (=> (bvsge (bvsub i2 (bvmul #b0000000000101 i1)) i2) (bvslt #b0000001010000 (bvadd i1 i1))))))

(check-sat)