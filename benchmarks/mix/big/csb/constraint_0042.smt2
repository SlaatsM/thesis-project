(set-logic QF_BV)

; Bit width chosen: 10 (covers range [-338, 338] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 10))

; Domain constraints
(assert (and (bvsge i1 #b1101011001) (bvsle i1 #b0010101011)))

; Formula constraint
(assert (bvsge (bvsub i1 i1) i1))

(check-sat)