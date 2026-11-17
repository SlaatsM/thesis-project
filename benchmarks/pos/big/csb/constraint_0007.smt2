(set-logic QF_BV)

; Bit width chosen: 11 (covers range [107, 992] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h5_a6_0 (_ BitVec 11))
(declare-const h5_a6_1 (_ BitVec 11))
(declare-const h5_h12_i13 (_ BitVec 11))
(declare-const h5_h12_i14 (_ BitVec 11))
(declare-const h5_h12_i16 (_ BitVec 11))
(declare-const h5_h17_a19_0 (_ BitVec 11))
(declare-const h5_h17_i18 (_ BitVec 11))
(declare-const h5_h17_i22 (_ BitVec 11))
(declare-const h5_h8_i10 (_ BitVec 11))
(declare-const h5_h8_i9 (_ BitVec 11))
(declare-const i1 (_ BitVec 11))
(declare-const i2 (_ BitVec 11))
(declare-const i3 (_ BitVec 11))
(declare-const i4 (_ BitVec 11))

; Domain constraints
(assert (and (bvsge h5_a6_0 #b01000101000) (bvsle h5_a6_0 #b01111011100)))
(assert (and (bvsge h5_a6_1 #b01000101000) (bvsle h5_a6_1 #b01111011100)))
(assert (and (bvsge h5_h12_i13 #b01000001111) (bvsle h5_h12_i13 #b01111100000)))
(assert (or (= h5_h12_i14 #b00110110100) (= h5_h12_i14 #b01111010101)))
(assert (and (bvsge h5_h12_i16 #b00010111000) (bvsle h5_h12_i16 #b00111001101)))
(assert (or (= h5_h17_a19_0 #b01001010100) (= h5_h17_a19_0 #b01010001011) (= h5_h17_a19_0 #b01110011111) (= h5_h17_a19_0 #b01110101111)))
(assert (and (bvsge h5_h17_i18 #b01001110001) (bvsle h5_h17_i18 #b01110100111)))
(assert (and (bvsge h5_h17_i22 #b00011010010) (bvsle h5_h17_i22 #b01100001001)))
(assert (and (bvsge h5_h8_i10 #b00010101000) (bvsle h5_h8_i10 #b01100011111)))
(assert (and (bvsge h5_h8_i9 #b01001100011) (bvsle h5_h8_i9 #b01110111001)))
(assert (and (bvsge i1 #b00100001110) (bvsle i1 #b00111011000)))
(assert (and (bvsge i2 #b01000111111) (bvsle i2 #b01001110110)))
(assert (or (= i3 #b00001101011) (and (bvsge i3 #b00100010100) (bvsle i3 #b01110101011))))
(assert (and (bvsge i4 #b00010010100) (bvsle i4 #b01101110110)))

; Formula constraint
(assert (not (bvsle h5_h8_i10 i3)))

(check-sat)