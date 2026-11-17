(set-logic QF_BV)

; Bit width chosen: 11 (covers range [23, 566] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b00000010111) (= i1 #b01000110110)))

; Formula constraint
(assert (bvsle #b00001001001 #b00001001111))

(check-sat)