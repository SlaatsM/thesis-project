(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-713, 926] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b10100110111) (= i1 #b11010001111) (= i1 #b11011101110) (= i1 #b01110011110)))

; Formula constraint
(assert (bvsle #b11111011011 i1))

(check-sat)