(set-logic QF_BV)

; Bit width chosen: 11 (covers range [73, 996] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 11))
(declare-const a1_1 (_ BitVec 11))
(declare-const a1_2 (_ BitVec 11))
(declare-const a1_3 (_ BitVec 11))
(declare-const a1_4 (_ BitVec 11))
(declare-const a1_5 (_ BitVec 11))

; Domain constraints
(assert (and (bvsge a1_0 #b00001001001) (bvsle a1_0 #b01111100100)))
(assert (and (bvsge a1_1 #b00001001001) (bvsle a1_1 #b01111100100)))
(assert (and (bvsge a1_2 #b00001001001) (bvsle a1_2 #b01111100100)))
(assert (and (bvsge a1_3 #b00001001001) (bvsle a1_3 #b01111100100)))
(assert (and (bvsge a1_4 #b00001001001) (bvsle a1_4 #b01111100100)))
(assert (and (bvsge a1_5 #b00001001001) (bvsle a1_5 #b01111100100)))

; Formula constraint
(assert (bvsge a1_5 a1_0))

(check-sat)