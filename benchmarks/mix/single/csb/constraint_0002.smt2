(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-782, 750] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b10011110010) (= i1 #b00101001110) (= i1 #b01011101110)))

; Formula constraint
(assert (bvsge #b11111011011 i1))

(check-sat)