(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-15428, 32509] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0_0 (_ BitVec 16))
(declare-const a1_1_0 (_ BitVec 16))

; Domain constraints
(assert (or (= a1_0_0 #b0000000001000000) (= a1_0_0 #b0000001000100111)))
(assert (or (= a1_1_0 #b0000000001000000) (= a1_1_0 #b0000001000100111)))

; Formula constraint
(assert (=> (and (and (bvsgt (bvmul #b0000000000111011 a1_1_0) a1_1_0) (bvsge (bvmul #b1111111111100100 a1_1_0) #b0000000000000101)) (or (bvsge a1_1_0 a1_1_0) (bvsle #b0000000001001101 a1_0_0))) (bvsge a1_0_0 (bvadd a1_1_0 a1_0_0))))

(check-sat)