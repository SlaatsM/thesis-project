(set-logic QF_BV)

; Bit width chosen: 13 (covers range [-1819, 2712] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 13))
(declare-const i2 (_ BitVec 13))

; Domain constraints
(assert (or (= i1 #b0000011010000) (= i1 #b0000110010010) (= i1 #b0001101111101)))
(assert (or (= i2 #b1110001100010) (= i2 #b1110110011101)))

; Formula constraint
(assert (=> (and (= #b1111110110111 i1) (bvsge i1 #b0000001100001)) (not (and (bvsgt (bvsub i1 (bvsub i2 i1)) #b1111111101110) (bvsge #b0000000001100 i1)))))

(check-sat)