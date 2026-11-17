(set-logic QF_BV)

; Bit width chosen: 10 (covers range [-425, 300] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 10))

; Domain constraints
(assert (and (bvsge i1 #b1001010111) (bvsle i1 #b0100101100)))

; Formula constraint
(assert (= i1 #b0001000000))

(check-sat)