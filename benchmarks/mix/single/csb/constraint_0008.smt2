(set-logic QF_BV)

; Bit width chosen: 14 (covers range [-4936, 2384] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 14))

; Domain constraints
(assert (or (= a1_0 #b11111011010110) (= a1_0 #b00000001110001) (= a1_0 #b00001001101001)))

; Formula constraint
(assert (=> (bvsle a1_0 a1_0) (bvsge (bvmul #b11111111111000 a1_0) #b11111110101010)))

(check-sat)