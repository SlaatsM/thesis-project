(set-logic QF_BV)

; Bit width chosen: 11 (covers range [25, 912] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b00000011001) (= i1 #b00000111001) (= i1 #b01110010000)))

; Formula constraint
(assert (bvsle i1 #b00000011101))

(check-sat)