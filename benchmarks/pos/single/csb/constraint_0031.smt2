(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-29233, 29183] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 16))

; Domain constraints
(assert (and (bvsge i1 #b0000000000000000) (bvsle i1 #b0000001011001001)))

; Formula constraint
(assert (bvsge #b1111111111011100 (bvsub #b1111111111001110 (bvmul #b1111111111010111 i1))))

(check-sat)