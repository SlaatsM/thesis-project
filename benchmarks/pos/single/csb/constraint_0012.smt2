(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-94513, 93700] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a2_0 (_ BitVec 18))
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= a2_0 #b000000000010001010) (= a2_0 #b000000000110110100)))
(assert (or (= i1 #b000000000101000000) (= i1 #b000000001011010111) (= i1 #b000000001110101001)))

; Formula constraint
(assert (and (bvsge a2_0 (bvsub (bvsub (bvmul #b000000000000100001 a2_0) (bvmul #b000000000001001101 i1)) a2_0)) (=> (or (bvslt #b000000000000010011 (bvsub (bvsub a2_0 (bvmul #b000000000001100100 i1)) (bvadd i1 #b000000000000001110))) (bvsgt i1 #b000000000001010110)) (and (bvsle i1 i1) (bvslt i1 a2_0)))))

(check-sat)