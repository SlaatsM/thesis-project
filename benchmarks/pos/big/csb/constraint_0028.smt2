(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-79, 762] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h1_h2_a3_0 (_ BitVec 11))
(declare-const h1_h2_a3_1 (_ BitVec 11))
(declare-const h1_h2_a3_2 (_ BitVec 11))

; Domain constraints
(assert (and (bvsge h1_h2_a3_0 #b01001100100) (bvsle h1_h2_a3_0 #b01011111010)))
(assert (and (bvsge h1_h2_a3_1 #b01001100100) (bvsle h1_h2_a3_1 #b01011111010)))
(assert (and (bvsge h1_h2_a3_2 #b01001100100) (bvsle h1_h2_a3_2 #b01011111010)))

; Formula constraint
(assert (and (or (not (bvsge (bvsub #b00001000101 #b11110110001) h1_h2_a3_1)) (not (bvsle h1_h2_a3_2 h1_h2_a3_0))) (bvsgt h1_h2_a3_0 h1_h2_a3_2)))

(check-sat)