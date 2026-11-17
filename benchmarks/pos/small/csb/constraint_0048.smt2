(set-logic QF_BV)

; Bit width chosen: 12 (covers range [-635, 1293] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h1_i2 (_ BitVec 12))

; Domain constraints
(assert (or (= h1_i2 #b000000010111) (= h1_i2 #b000011000001) (= h1_i2 #b001000100001) (= h1_i2 #b001001000100) (= h1_i2 #b001010010010)))

; Formula constraint
(assert (not (bvsge (bvadd h1_i2 (bvsub h1_i2 h1_i2)) (bvsub h1_i2 (bvsub #b111110110010 #b000000100001)))))

(check-sat)