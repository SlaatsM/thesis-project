(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-64962, 66566] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b000000000001001110) (= i1 #b000000000101110110) (= i1 #b000000001011001011) (= i1 #b000000001011101111) (= i1 #b000000001100100010)))

; Formula constraint
(assert (and (bvsle (bvsub (bvadd #b111111111111001010 #b111111111111100110) (bvmul #b000000000000011111 i1)) (bvmul #b000000000000000110 i1)) (and (=> (bvsle i1 #b111111111111101011) (not (= #b000000000000000011 (bvadd (bvmul #b111111111110101111 i1) i1)))) (bvslt i1 (bvadd i1 (bvmul #b000000000001010010 i1))))))

(check-sat)