(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-200, 766] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b11100111000) (= i1 #b00111010111) (= i1 #b01011111110)))

; Formula constraint
(assert (not (not (= i1 i1))))

(check-sat)