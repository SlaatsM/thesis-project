(set-logic QF_BV)

; Bit width chosen: 11 (covers range [15, 730] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b00000001111) (and (bvsge i1 #b00001100100) (bvsle i1 #b00011011001)) (and (bvsge i1 #b00101111101) (bvsle i1 #b01011011010))))

; Formula constraint
(assert (not (bvslt #b00001100011 i1)))

(check-sat)