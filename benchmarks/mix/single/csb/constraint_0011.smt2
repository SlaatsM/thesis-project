(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-903, 281] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b10001111001) (= i1 #b10010001010) (= i1 #b10101100001) (= i1 #b00100011001)))

; Formula constraint
(assert (and (bvsle i1 i1) (bvsle #b00000010110 i1)))

(check-sat)