(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-1015, 1015] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0_0 (_ BitVec 11))
(declare-const a1_0_1 (_ BitVec 11))
(declare-const a1_0_2 (_ BitVec 11))
(declare-const a1_0_3 (_ BitVec 11))
(declare-const a1_0_4 (_ BitVec 11))

; Domain constraints
(assert (and (bvsge a1_0_0 #b10000100100) (bvsle a1_0_0 #b00000011011)))
(assert (and (bvsge a1_0_1 #b10000100100) (bvsle a1_0_1 #b00000011011)))
(assert (and (bvsge a1_0_2 #b10000100100) (bvsle a1_0_2 #b00000011011)))
(assert (and (bvsge a1_0_3 #b10000100100) (bvsle a1_0_3 #b00000011011)))
(assert (and (bvsge a1_0_4 #b10000100100) (bvsle a1_0_4 #b00000011011)))

; Formula constraint
(assert (not (not (and (bvsle #b00000010101 a1_0_1) (bvslt (bvsub a1_0_3 a1_0_4) a1_0_3)))))

(check-sat)