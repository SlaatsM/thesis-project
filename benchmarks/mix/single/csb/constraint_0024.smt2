(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-11704, 21028] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 16))
(declare-const i2 (_ BitVec 16))

; Domain constraints
(assert (or (and (bvsge i1 #b1111110100010001) (bvsle i1 #b1111110101100101)) (= i1 #b1111110101110001) (= i1 #b0000000110100010)))
(assert (or (and (bvsge i2 #b1111110001000010) (bvsle i2 #b0000000110111111)) (= i2 #b0000001111010111)))

; Formula constraint
(assert (not (or (bvslt i2 (bvadd i1 #b0000000000011111)) (bvsle #b1111111110111101 (bvmul #b1111111111100100 i1)))))

(check-sat)