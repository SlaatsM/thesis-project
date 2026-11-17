(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-48888, 59904] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h1_i2 (_ BitVec 17))

; Domain constraints
(assert (and (bvsge h1_i2 #b11111110101011001) (bvsle h1_i2 #b00000001101000000)))

; Formula constraint
(assert (and (not (=> (bvsge h1_i2 h1_i2) (bvsle (bvmul #b00000000001001000 h1_i2) #b00000000001010111))) (=> (bvsgt #b00000000001010011 (bvadd #b11111111111111000 h1_i2)) (and (not (= (bvsub (bvadd (bvmul #b11111111111110101 h1_i2) h1_i2) h1_i2) #b00000000000110000)) (bvsle h1_i2 (bvmul #b00000000000100001 h1_i2))))))

(check-sat)