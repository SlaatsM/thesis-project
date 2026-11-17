(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-28653, 44528] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (and (bvsge i1 #b11111110110000101) (bvsle i1 #b11111110110100101)))

; Formula constraint
(assert (or (bvsle i1 i1) (and (=> (bvslt (bvsub (bvsub (bvmul #b11111111111110101 i1) (bvmul #b00000000000001110 i1)) (bvsub #b11111111110110010 (bvmul #b11111111111010011 i1))) (bvadd i1 i1)) (bvsle i1 #b11111111111010000)) (bvslt i1 (bvadd (bvadd #b11111111111111010 i1) i1)))))

(check-sat)