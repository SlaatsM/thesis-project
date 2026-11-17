(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-21300, 21304] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 16))
(declare-const a1_1 (_ BitVec 16))

; Domain constraints
(assert (or (= a1_0 #b1111111101011010) (= a1_0 #b1111111110110111) (= a1_0 #b1111111111000100) (= a1_0 #b0000000100101100)))
(assert (or (= a1_1 #b1111111101011010) (= a1_1 #b1111111110110111) (= a1_1 #b1111111111000100) (= a1_1 #b0000000100101100)))

; Formula constraint
(assert (and (=> (bvsge (bvmul #b0000000000101101 a1_1) (bvadd (bvsub (bvmul #b1111111111111001 a1_1) (bvmul #b0000000000010010 a1_0)) a1_1)) (and (bvsle #b1111111111011011 #b1111111111100010) (bvslt (bvmul #b1111111110111001 a1_0) (bvsub #b0000000000000101 (bvmul #b1111111111110101 a1_0))))) (or (not (bvsle (bvsub (bvmul #b0000000001000111 a1_0) #b1111111111111100) a1_0)) (bvsle (bvsub (bvmul #b1111111111100110 a1_1) #b1111111111010000) a1_0))))

(check-sat)