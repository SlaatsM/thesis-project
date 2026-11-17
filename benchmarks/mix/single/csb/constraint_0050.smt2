(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-39729, 51015] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 17))
(declare-const a1_1 (_ BitVec 17))

; Domain constraints
(assert (or (= a1_0 #b11111110101000111) (= a1_0 #b11111111011111111) (= a1_0 #b11111111100100101) (= a1_0 #b00000001101111111)))
(assert (or (= a1_1 #b11111110101000111) (= a1_1 #b11111111011111111) (= a1_1 #b11111111100100101) (= a1_1 #b00000001101111111)))

; Formula constraint
(assert (not (=> (not (bvsle #b00000000000100100 (bvmul #b11111111111101100 a1_1))) (and (bvsge (bvmul #b00000000000000001 a1_1) (bvadd (bvmul #b00000000000110111 a1_0) (bvadd a1_0 a1_1))) (not (= #b00000000001000100 a1_0))))))

(check-sat)