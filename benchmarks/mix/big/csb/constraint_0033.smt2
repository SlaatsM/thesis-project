(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-786, 977] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h3_i4 (_ BitVec 11))
(declare-const h3_i5 (_ BitVec 11))
(declare-const h3_i6 (_ BitVec 11))
(declare-const i1 (_ BitVec 11))
(declare-const i2 (_ BitVec 11))

; Domain constraints
(assert (or (= h3_i4 #b10011101110) (= h3_i4 #b00111111110) (= h3_i4 #b01001011101) (= h3_i4 #b01100010110)))
(assert (and (bvsge h3_i5 #b00001000111) (bvsle h3_i5 #b01111010001)))
(assert (and (bvsge h3_i6 #b11000110010) (bvsle h3_i6 #b01110110000)))
(assert (and (bvsge i1 #b11111101100) (bvsle i1 #b00111111111)))
(assert (or (= i2 #b00101010100) (= i2 #b01011010110) (= i2 #b01101000001)))

; Formula constraint
(assert (bvslt i2 h3_i4))

(check-sat)