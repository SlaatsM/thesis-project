(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-340, 784] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h1_i2 (_ BitVec 11))

; Domain constraints
(assert (or (= h1_i2 #b00000011010) (= h1_i2 #b00110001000)))

; Formula constraint
(assert (bvslt (bvsub #b00000111111 #b11111001110) (bvsub (bvadd h1_i2 h1_i2) h1_i2)))

(check-sat)