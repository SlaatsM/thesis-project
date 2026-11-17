(set-logic QF_BV)

; Bit width chosen: 11 (covers range [31, 787] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 11))
(declare-const a1_1 (_ BitVec 11))
(declare-const a1_2 (_ BitVec 11))
(declare-const a1_3 (_ BitVec 11))
(declare-const a1_4 (_ BitVec 11))
(declare-const a1_5 (_ BitVec 11))

; Domain constraints
(assert (or (= a1_0 #b01010101001) (= a1_0 #b01100010011)))
(assert (or (= a1_1 #b01010101001) (= a1_1 #b01100010011)))
(assert (or (= a1_2 #b01010101001) (= a1_2 #b01100010011)))
(assert (or (= a1_3 #b01010101001) (= a1_3 #b01100010011)))
(assert (or (= a1_4 #b01010101001) (= a1_4 #b01100010011)))
(assert (or (= a1_5 #b01010101001) (= a1_5 #b01100010011)))

; Formula constraint
(assert (bvsgt a1_0 #b00000011111))

(check-sat)