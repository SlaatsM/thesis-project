(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-28116, 90387] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h1_i2 (_ BitVec 18))

; Domain constraints
(assert (or (= h1_i2 #b111111110001101111) (= h1_i2 #b111111111110111000) (= h1_i2 #b000000000100011100)))

; Formula constraint
(assert (=> (and (not (= (bvmul #b111111111110011101 h1_i2) h1_i2)) (and (bvsge h1_i2 h1_i2) (bvsle (bvadd h1_i2 (bvmul #b000000000000010101 h1_i2)) h1_i2))) (bvsgt (bvmul #b111111111111111000 h1_i2) h1_i2)))

(check-sat)