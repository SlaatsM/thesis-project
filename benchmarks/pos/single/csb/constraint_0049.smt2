(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-16, 609] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h1_i2 (_ BitVec 11))
(declare-const h1_i3 (_ BitVec 11))

; Domain constraints
(assert (or (= h1_i2 #b00010101110) (= h1_i2 #b00101000001) (= h1_i2 #b00110010100) (= h1_i2 #b01001100001)))
(assert (and (bvsge h1_i3 #b00110000010) (bvsle h1_i3 #b01000111110)))

; Formula constraint
(assert (and (bvsge h1_i2 (bvadd (bvsub #b00001000001 #b00001010001) h1_i3)) (= h1_i3 h1_i2)))

(check-sat)