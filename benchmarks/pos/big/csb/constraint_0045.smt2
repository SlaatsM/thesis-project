(set-logic QF_BV)

; Bit width chosen: 11 (covers range [24, 956] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a4_0_i6 (_ BitVec 11))
(declare-const a4_1_i6 (_ BitVec 11))
(declare-const a4_2_i6 (_ BitVec 11))
(declare-const a4_3_i6 (_ BitVec 11))
(declare-const a4_4_i6 (_ BitVec 11))
(declare-const i1 (_ BitVec 11))
(declare-const i2 (_ BitVec 11))
(declare-const i3 (_ BitVec 11))

; Domain constraints
(assert (and (bvsge a4_0_i6 #b00111110110) (bvsle a4_0_i6 #b01011101000)))
(assert (and (bvsge a4_1_i6 #b00111110110) (bvsle a4_1_i6 #b01011101000)))
(assert (and (bvsge a4_2_i6 #b00111110110) (bvsle a4_2_i6 #b01011101000)))
(assert (and (bvsge a4_3_i6 #b00111110110) (bvsle a4_3_i6 #b01011101000)))
(assert (and (bvsge a4_4_i6 #b00111110110) (bvsle a4_4_i6 #b01011101000)))
(assert (and (bvsge i1 #b00100001000) (bvsle i1 #b01001110101)))
(assert (and (bvsge i2 #b00100111011) (bvsle i2 #b01110111100)))
(assert (and (bvsge i3 #b00000011000) (bvsle i3 #b00100101000)))

; Formula constraint
(assert (not (= i1 i3)))

(check-sat)