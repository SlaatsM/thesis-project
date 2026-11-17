(set-logic QF_BV)

; Bit width chosen: 11 (covers range [3, 561] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h1_i2 (_ BitVec 11))

; Domain constraints
(assert (or (= h1_i2 #b00000000011) (= h1_i2 #b00110101010) (= h1_i2 #b01000100011) (= h1_i2 #b01000110001)))

; Formula constraint
(assert (bvslt h1_i2 #b00000001000))

(check-sat)