(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-9792, 17712] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a2_0 (_ BitVec 16))
(declare-const i1 (_ BitVec 16))

; Domain constraints
(assert (or (= a2_0 #b0000000110010111) (= a2_0 #b0000000110011101) (= a2_0 #b0000000110101010) (= a2_0 #b0000001010010000) (= a2_0 #b0000001011100010)))
(assert (and (bvsge i1 #b0000000000101000) (bvsle i1 #b0000000001100110)))

; Formula constraint
(assert (=> (and (bvsge (bvadd i1 a2_0) #b1111111110111010) (=> (bvsle (bvadd (bvmul #b1111111110100000 i1) (bvadd a2_0 (bvmul #b0000000000010111 a2_0))) (bvmul #b0000000000110000 i1)) (not (= a2_0 (bvsub (bvadd #b1111111111110011 i1) a2_0))))) (bvsge a2_0 (bvmul #b1111111111010111 i1))))

(check-sat)