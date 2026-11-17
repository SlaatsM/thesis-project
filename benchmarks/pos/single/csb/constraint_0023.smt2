(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-55860, 57036] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (and (bvsge i1 #b00000000001000100) (bvsle i1 #b00000001001001100)))

; Formula constraint
(assert (and (or (and (= #b00000000001011101 i1) (bvsge (bvsub (bvadd i1 i1) i1) i1)) (and (= (bvadd #b11111111111001011 i1) i1) (bvsgt i1 #b11111111110100101))) (=> (=> (bvslt (bvsub (bvadd i1 (bvmul #b00000000000000110 i1)) i1) i1) (bvsgt i1 #b00000000000101001)) (or (not (= i1 #b11111111111011110)) (bvsgt (bvmul #b11111111111011101 i1) (bvadd (bvsub i1 (bvmul #b11111111110100001 i1)) i1))))))

(check-sat)