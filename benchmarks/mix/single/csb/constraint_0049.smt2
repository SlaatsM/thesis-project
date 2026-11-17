(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-661, 77] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h1_i2 (_ BitVec 11))

; Domain constraints
(assert (or (= h1_i2 #b11010010110) (= h1_i2 #b11111111001)))

; Formula constraint
(assert (and (or (and (bvsgt #b11110011110 #b00001001101) (bvsle h1_i2 #b00000100000)) (or (bvslt (bvadd h1_i2 (bvadd #b11111101011 #b11111000110)) (bvsub h1_i2 #b11111001001)) (bvsgt h1_i2 h1_i2))) (and (and (bvsgt #b00001001010 h1_i2) (bvsge h1_i2 (bvadd (bvsub h1_i2 #b11111000001) h1_i2))) (bvsge #b11111110101 h1_i2))))

(check-sat)