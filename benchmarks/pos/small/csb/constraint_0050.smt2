(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-30432, 21239] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 16))

; Domain constraints
(assert (or (= i1 #b0000000001011001) (= i1 #b0000000100100101) (= i1 #b0000000100111101)))

; Formula constraint
(assert (=> (not (=> (not (= i1 (bvmul #b1111111111001010 i1))) (bvslt i1 i1))) (=> (bvslt #b1111111111011110 (bvsub #b1111111111001101 i1)) (= (bvadd (bvmul #b1111111110100000 i1) (bvadd (bvmul #b1111111111111001 i1) (bvmul #b0000000001000011 i1))) (bvadd i1 (bvadd #b1111111110111011 #b0000000001011111))))))

(check-sat)