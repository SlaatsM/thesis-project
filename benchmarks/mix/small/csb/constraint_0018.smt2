(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-34, 799] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 11))
(declare-const a1_1 (_ BitVec 11))

; Domain constraints
(assert (or (= a1_0 #b11111011110) (= a1_0 #b01001110101) (= a1_0 #b01100011111)))
(assert (or (= a1_1 #b11111011110) (= a1_1 #b01001110101) (= a1_1 #b01100011111)))

; Formula constraint
(assert (bvsle a1_0 a1_1))

(check-sat)