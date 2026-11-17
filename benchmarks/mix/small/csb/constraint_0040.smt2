(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-33705, 23499] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b11111111010001011) (= i1 #b00000000001110011) (= i1 #b00000001000010111)))

; Formula constraint
(assert (or (=> (bvslt #b11111111111110111 i1) (or (bvsge #b11111111111101010 (bvmul #b11111111111001001 i1)) (bvsgt (bvsub i1 (bvadd #b11111111110100110 #b00000000000101110)) (bvmul #b11111111111101100 i1)))) (and (or (bvslt (bvadd i1 (bvadd i1 i1)) (bvmul #b11111111111000001 i1)) (bvsle i1 i1)) (=> (bvsge i1 (bvmul #b00000000000101010 i1)) (bvsle i1 #b11111111110110101)))))

(check-sat)