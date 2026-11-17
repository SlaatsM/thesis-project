(set-logic QF_BV)

; Bit width chosen: 11 (covers range [220, 904] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h2_h3_a5_0 (_ BitVec 11))
(declare-const h2_h3_a5_1 (_ BitVec 11))
(declare-const h2_h3_a5_2 (_ BitVec 11))
(declare-const h2_h3_i4 (_ BitVec 11))
(declare-const h2_i7 (_ BitVec 11))
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (and (bvsge h2_h3_a5_0 #b00011011100) (bvsle h2_h3_a5_0 #b01101101001)) (= h2_h3_a5_0 #b01110001000)))
(assert (or (and (bvsge h2_h3_a5_1 #b00011011100) (bvsle h2_h3_a5_1 #b01101101001)) (= h2_h3_a5_1 #b01110001000)))
(assert (or (and (bvsge h2_h3_a5_2 #b00011011100) (bvsle h2_h3_a5_2 #b01101101001)) (= h2_h3_a5_2 #b01110001000)))
(assert (and (bvsge h2_h3_i4 #b01010100100) (bvsle h2_h3_i4 #b01011011111)))
(assert (or (= h2_i7 #b00101010100) (= h2_i7 #b00111110000)))
(assert (and (bvsge i1 #b00100000001) (bvsle i1 #b00110001010)))

; Formula constraint
(assert (bvslt h2_h3_a5_0 i1))

(check-sat)