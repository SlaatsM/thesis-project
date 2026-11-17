(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-642, 24244] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 16))

; Domain constraints
(assert (and (bvsge i1 #b1111111011000001) (bvsle i1 #b1111111100100001)))

; Formula constraint
(assert (not (and (and (bvsge #b1111111111010101 (bvadd i1 i1)) (bvsge (bvmul #b1111111111111101 i1) (bvmul #b1111111111110111 i1))) (and (bvsge (bvmul #b1111111110110100 i1) #b1111111111000100) (bvslt (bvadd i1 (bvadd #b1111111111111100 i1)) i1)))))

(check-sat)