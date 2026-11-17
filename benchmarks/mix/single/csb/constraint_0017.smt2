(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-984, 474] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b10000101000) (= i1 #b00111011010)))

; Formula constraint
(assert (bvsge i1 #b00000110100))

(check-sat)