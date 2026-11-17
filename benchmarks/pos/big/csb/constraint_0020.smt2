(set-logic QF_BV)

; Bit width chosen: 11 (covers range [64, 979] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a10_0 (_ BitVec 11))
(declare-const a10_1 (_ BitVec 11))
(declare-const a10_2 (_ BitVec 11))
(declare-const a10_3 (_ BitVec 11))
(declare-const a10_4 (_ BitVec 11))
(declare-const a5_0 (_ BitVec 11))
(declare-const a7_0_i9 (_ BitVec 11))
(declare-const a7_1_i9 (_ BitVec 11))
(declare-const a7_2_i9 (_ BitVec 11))
(declare-const a7_3_i9 (_ BitVec 11))
(declare-const h1_i4 (_ BitVec 11))
(declare-const h12_a13_0 (_ BitVec 11))
(declare-const h12_a13_1 (_ BitVec 11))

; Domain constraints
(assert (and (bvsge a10_0 #b00001000000) (bvsle a10_0 #b01111010011)))
(assert (and (bvsge a10_1 #b00001000000) (bvsle a10_1 #b01111010011)))
(assert (and (bvsge a10_2 #b00001000000) (bvsle a10_2 #b01111010011)))
(assert (and (bvsge a10_3 #b00001000000) (bvsle a10_3 #b01111010011)))
(assert (and (bvsge a10_4 #b00001000000) (bvsle a10_4 #b01111010011)))
(assert (or (= a5_0 #b00001001111) (= a5_0 #b00110110000)))
(assert (and (bvsge a7_0_i9 #b00111000100) (bvsle a7_0_i9 #b00111100011)))
(assert (and (bvsge a7_1_i9 #b00111000100) (bvsle a7_1_i9 #b00111100011)))
(assert (and (bvsge a7_2_i9 #b00111000100) (bvsle a7_2_i9 #b00111100011)))
(assert (and (bvsge a7_3_i9 #b00111000100) (bvsle a7_3_i9 #b00111100011)))
(assert (and (bvsge h1_i4 #b00001110101) (bvsle h1_i4 #b00011111011)))
(assert (and (bvsge h12_a13_0 #b01101010100) (bvsle h12_a13_0 #b01110010000)))
(assert (and (bvsge h12_a13_1 #b01101010100) (bvsle h12_a13_1 #b01110010000)))

; Formula constraint
(assert (= a7_2_i9 a7_0_i9))

(check-sat)