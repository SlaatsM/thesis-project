(set-logic QF_BV)

; Bit width chosen: 19 (covers range [-82, 159432] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 19))

; Domain constraints
(assert (or (= i1 #b0000000000100111110) (= i1 #b0000000000110011010) (= i1 #b0000000000111110000) (= i1 #b0000000001101010111) (= i1 #b0000000001110110101)))

; Formula constraint
(assert (bvslt #b1111111111110101110 (bvadd (bvadd (bvmul #b0000000000001100010 i1) i1) (bvmul #b0000000000001000101 i1))))

(check-sat)