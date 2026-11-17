(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-7, 72192] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h1_i2 (_ BitVec 18))

; Domain constraints
(assert (or (= h1_i2 #b000000000001111000) (= h1_i2 #b000000000010011000) (= h1_i2 #b000000000010100001) (= h1_i2 #b000000000100011011) (= h1_i2 #b000000001011110000)))

; Formula constraint
(assert (=> (not (= h1_i2 h1_i2)) (and (or (bvsge (bvmul #b000000000001100000 h1_i2) h1_i2) (= #b111111111111111001 #b000000000000100111)) (bvsge #b000000000000100000 h1_i2))))

(check-sat)