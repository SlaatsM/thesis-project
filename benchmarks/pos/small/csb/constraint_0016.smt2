(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-36957, 762] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h1_i2 (_ BitVec 17))

; Domain constraints
(assert (or (= h1_i2 #b00000000010100010) (= h1_i2 #b00000000101111101)))

; Formula constraint
(assert (and (and (or (bvsgt (bvmul #b11111111110011111 h1_i2) h1_i2) (bvsle #b00000000001100000 h1_i2)) (and (bvsle h1_i2 (bvadd h1_i2 h1_i2)) (bvslt #b00000000001000011 h1_i2))) (bvslt (bvadd (bvmul #b11111111111111010 h1_i2) (bvsub #b11111111110111101 h1_i2)) h1_i2)))

(check-sat)