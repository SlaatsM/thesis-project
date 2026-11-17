(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-629, 818] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h1_i2 (_ BitVec 11))

; Domain constraints
(assert (or (= h1_i2 #b10110001011) (= h1_i2 #b10110010110) (= h1_i2 #b10111000101) (= h1_i2 #b01001000011) (= h1_i2 #b01100110010)))

; Formula constraint
(assert (bvsge h1_i2 h1_i2))

(check-sat)