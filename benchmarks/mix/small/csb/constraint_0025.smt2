(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-661, 247] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 11))
(declare-const a1_1 (_ BitVec 11))

; Domain constraints
(assert (or (= a1_0 #b10101101011) (= a1_0 #b11010101001) (= a1_0 #b00011110111)))
(assert (or (= a1_1 #b10101101011) (= a1_1 #b11010101001) (= a1_1 #b00011110111)))

; Formula constraint
(assert (= a1_1 a1_0))

(check-sat)