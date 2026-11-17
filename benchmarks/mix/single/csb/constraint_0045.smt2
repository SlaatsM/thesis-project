(set-logic QF_BV)

; Bit width chosen: 13 (covers range [-3424, 2800] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 13))

; Domain constraints
(assert (and (bvsge i1 #b1111100101010) (bvsle i1 #b0000010101111)))

; Formula constraint
(assert (=> (and (= i1 i1) (or (bvsgt (bvmul #b1111111111001 i1) #b0000000110110) (not (= i1 #b0000000000111)))) (and (=> (bvsge i1 i1) (bvsgt i1 i1)) (bvslt (bvsub i1 (bvadd #b1111111100001 i1)) (bvadd i1 (bvmul #b0000000001111 i1))))))

(check-sat)