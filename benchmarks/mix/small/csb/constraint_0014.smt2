(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-22344, 11208] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 16))

; Domain constraints
(assert (or (= i1 #b1111110001011101) (= i1 #b1111111011010101) (= i1 #b1111111011110110) (= i1 #b0000000111010011)))

; Formula constraint
(assert (=> (=> (bvsge i1 #b1111111111001101) (and (bvsgt #b1111111111010000 (bvmul #b1111111111110101 i1)) (bvsgt (bvmul #b0000000000011000 i1) i1))) (bvsle i1 i1)))

(check-sat)