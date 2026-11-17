(set-logic QF_BV)

; Bit width chosen: 12 (covers range [53, 1940] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h1_i2 (_ BitVec 12))

; Domain constraints
(assert (or (= h1_i2 #b000101000010) (= h1_i2 #b000111000100) (= h1_i2 #b001010010011) (= h1_i2 #b001100001001) (= h1_i2 #b001111001010)))

; Formula constraint
(assert (=> (and (bvsle h1_i2 (bvadd h1_i2 h1_i2)) (bvsge h1_i2 #b000000110101)) (bvslt #b000001001100 h1_i2)))

(check-sat)