(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-577, -564] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (and (bvsge i1 #b10110111111) (bvsle i1 #b10111001100)))

; Formula constraint
(assert (bvsge i1 i1))

(check-sat)