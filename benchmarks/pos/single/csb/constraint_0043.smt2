(set-logic QF_BV)

; Bit width chosen: 11 (covers range [42, 989] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b00000101010) (and (bvsge i1 #b00010001011) (bvsle i1 #b01000010110)) (= i1 #b01111011101)))

; Formula constraint
(assert (bvslt i1 #b00001010001))

(check-sat)