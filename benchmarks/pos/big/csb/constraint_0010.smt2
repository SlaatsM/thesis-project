(set-logic QF_BV)

; Bit width chosen: 11 (covers range [24, 986] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h1_a2_0 (_ BitVec 11))
(declare-const h1_a2_1 (_ BitVec 11))
(declare-const h1_a2_2 (_ BitVec 11))
(declare-const h1_h4_a6_0 (_ BitVec 11))
(declare-const h1_h4_a6_1 (_ BitVec 11))
(declare-const h1_h4_a6_2 (_ BitVec 11))
(declare-const h1_h4_a6_3 (_ BitVec 11))
(declare-const h1_h4_i9 (_ BitVec 11))
(declare-const i10 (_ BitVec 11))

; Domain constraints
(assert (or (= h1_a2_0 #b00101011011) (= h1_a2_0 #b01001111110) (and (bvsge h1_a2_0 #b01101100011) (bvsle h1_a2_0 #b01101111111))))
(assert (or (= h1_a2_1 #b00101011011) (= h1_a2_1 #b01001111110) (and (bvsge h1_a2_1 #b01101100011) (bvsle h1_a2_1 #b01101111111))))
(assert (or (= h1_a2_2 #b00101011011) (= h1_a2_2 #b01001111110) (and (bvsge h1_a2_2 #b01101100011) (bvsle h1_a2_2 #b01101111111))))
(assert (and (bvsge h1_h4_a6_0 #b00000011000) (bvsle h1_h4_a6_0 #b01101000110)))
(assert (and (bvsge h1_h4_a6_1 #b00000011000) (bvsle h1_h4_a6_1 #b01101000110)))
(assert (and (bvsge h1_h4_a6_2 #b00000011000) (bvsle h1_h4_a6_2 #b01101000110)))
(assert (and (bvsge h1_h4_a6_3 #b00000011000) (bvsle h1_h4_a6_3 #b01101000110)))
(assert (and (bvsge h1_h4_i9 #b00110011100) (bvsle h1_h4_i9 #b01011000010)))
(assert (or (= i10 #b00100110000) (= i10 #b01011011001) (= i10 #b01101100100) (= i10 #b01111011010)))

; Formula constraint
(assert (not (bvslt h1_h4_a6_3 h1_a2_1)))

(check-sat)