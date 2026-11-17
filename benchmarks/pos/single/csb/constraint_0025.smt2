(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-23850, 79182] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b000000000000010100) (= i1 #b000000000100111100) (= i1 #b000000001100000100) (= i1 #b000000001110111010)))

; Formula constraint
(assert (=> (and (or (bvsgt (bvsub #b111111111111101111 #b000000000000110101) (bvsub (bvmul #b000000000000111100 i1) (bvsub (bvmul #b111111111111101010 i1) i1))) (bvslt #b000000000000010111 i1)) (=> (bvsle #b111111111110100000 (bvadd i1 #b000000000000000111)) (bvsle (bvmul #b111111111111100111 i1) i1))) (bvsgt #b000000000001001100 i1)))

(check-sat)