(set-logic QF_BV)

; Bit width chosen: 15 (covers range [-11070, 10045] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 15))

; Domain constraints
(assert (and (bvsge i1 #b000000011000100) (bvsle i1 #b000000011001101)))

; Formula constraint
(assert (=> (and (bvsle (bvadd (bvsub i1 (bvmul #b000000000011011 i1)) #b111111111011000) #b111111111010101) (or (bvsgt #b000000000110100 (bvmul #b111111111001010 i1)) (bvsge #b000000001001000 i1))) (bvsgt (bvmul #b000000000110001 i1) i1)))

(check-sat)