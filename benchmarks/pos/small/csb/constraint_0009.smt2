(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-38, 56523] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h1_i2 (_ BitVec 17))

; Domain constraints
(assert (and (bvsge h1_i2 #b00000001010011100) (bvsle h1_i2 #b00000001010101001)))

; Formula constraint
(assert (and (bvslt #b00000000000110001 (bvmul #b00000000001010011 h1_i2)) (not (= #b11111111111011010 #b00000000000000011))))

(check-sat)