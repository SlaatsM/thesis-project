(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-998, -903] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 11))
(declare-const a1_1 (_ BitVec 11))
(declare-const a1_2 (_ BitVec 11))

; Domain constraints
(assert (or (= a1_0 #b10000011010) (= a1_0 #b10001111001)))
(assert (or (= a1_1 #b10000011010) (= a1_1 #b10001111001)))
(assert (or (= a1_2 #b10000011010) (= a1_2 #b10001111001)))

; Formula constraint
(assert (bvsle a1_0 a1_2))

(check-sat)