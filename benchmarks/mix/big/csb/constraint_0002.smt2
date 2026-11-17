(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-70, 43350] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (and (bvsge i1 #b00000000110111001) (bvsle i1 #b00000001001000010)))

; Formula constraint
(assert (bvslt (bvadd i1 #b11111111110111010) (bvmul #b00000000001001011 i1)))

(check-sat)