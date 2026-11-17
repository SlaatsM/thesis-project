(set-logic QF_BV)

; Bit width chosen: 11 (covers range [19, 948] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h1_a2_0 (_ BitVec 11))
(declare-const h1_a2_1 (_ BitVec 11))
(declare-const h1_a2_2 (_ BitVec 11))
(declare-const h1_i4 (_ BitVec 11))
(declare-const h1_i5 (_ BitVec 11))
(declare-const h6_a13_0_0 (_ BitVec 11))
(declare-const h6_a13_1_0 (_ BitVec 11))
(declare-const h6_a13_2_0 (_ BitVec 11))
(declare-const h6_a13_3_0 (_ BitVec 11))
(declare-const h6_a13_4_0 (_ BitVec 11))
(declare-const h6_h10_i11 (_ BitVec 11))
(declare-const h6_h10_i12 (_ BitVec 11))
(declare-const h6_h7_i9 (_ BitVec 11))
(declare-const h6_i16 (_ BitVec 11))

; Domain constraints
(assert (and (bvsge h1_a2_0 #b00000010011) (bvsle h1_a2_0 #b00000100111)))
(assert (and (bvsge h1_a2_1 #b00000010011) (bvsle h1_a2_1 #b00000100111)))
(assert (and (bvsge h1_a2_2 #b00000010011) (bvsle h1_a2_2 #b00000100111)))
(assert (and (bvsge h1_i4 #b00000110110) (bvsle h1_i4 #b01000100000)))
(assert (and (bvsge h1_i5 #b00011101110) (bvsle h1_i5 #b00100000000)))
(assert (and (bvsge h6_a13_0_0 #b00001000110) (bvsle h6_a13_0_0 #b00110000101)))
(assert (and (bvsge h6_a13_1_0 #b00001000110) (bvsle h6_a13_1_0 #b00110000101)))
(assert (and (bvsge h6_a13_2_0 #b00001000110) (bvsle h6_a13_2_0 #b00110000101)))
(assert (and (bvsge h6_a13_3_0 #b00001000110) (bvsle h6_a13_3_0 #b00110000101)))
(assert (and (bvsge h6_a13_4_0 #b00001000110) (bvsle h6_a13_4_0 #b00110000101)))
(assert (and (bvsge h6_h10_i11 #b00010011100) (bvsle h6_h10_i11 #b01000000101)))
(assert (and (bvsge h6_h10_i12 #b00001010110) (bvsle h6_h10_i12 #b01110110100)))
(assert (and (bvsge h6_h7_i9 #b00001110110) (bvsle h6_h7_i9 #b00100000001)))
(assert (and (bvsge h6_i16 #b00000110101) (bvsle h6_i16 #b01001001111)))

; Formula constraint
(assert (not (= #b00000111100 h6_i16)))

(check-sat)