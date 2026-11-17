(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-36582, 57239] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b11111111001101110) (= i1 #b11111111011000101) (= i1 #b00000000000111101) (= i1 #b00000000001010001) (= i1 #b00000001001110101)))

; Formula constraint
(assert (or (and (bvsge (bvmul #b00000000000011101 i1) #b11111111110110010) (= i1 (bvmul #b11111111111011010 i1))) (or (=> (bvslt (bvmul #b11111111111010010 i1) #b00000000000110101) (bvslt (bvsub i1 i1) i1)) (=> (bvsge i1 (bvmul #b00000000001011011 i1)) (bvsge i1 (bvmul #b00000000000010000 i1))))))

(check-sat)