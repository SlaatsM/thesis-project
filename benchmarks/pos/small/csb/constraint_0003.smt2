(set-logic QF_BV)

; Bit width chosen: 11 (covers range [118, 974] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b00001110110) (= i1 #b00100101010) (= i1 #b01001000010) (= i1 #b01111001110)))

; Formula constraint
(assert (= i1 i1))

(check-sat)