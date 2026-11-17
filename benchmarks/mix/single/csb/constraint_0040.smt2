(set-logic QF_BV)

; Bit width chosen: 14 (covers range [-8080, 2170] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h1_i2 (_ BitVec 14))

; Domain constraints
(assert (or (= h1_i2 #b11110011011000) (= h1_i2 #b11110011110111) (= h1_i2 #b11110101000001) (= h1_i2 #b11110111001001) (= h1_i2 #b00000011011001)))

; Formula constraint
(assert (bvsge (bvmul #b00000000001010 h1_i2) #b11111111011101))

(check-sat)