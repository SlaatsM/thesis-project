(set-logic QF_BV)

; Bit width chosen: 17 (covers range [11, 35872] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))
(declare-const i2 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b00000000111100000) (= i1 #b00000001001010111) (= i1 #b00000001001100000)))
(assert (or (= i2 #b00000000010110111) (= i2 #b00000000011110010) (= i2 #b00000000100000110) (= i2 #b00000001001111110) (= i2 #b00000001011010000)))

; Formula constraint
(assert (or (and (bvsge #b00000000000001011 i1) (and (bvslt #b00000000000111010 (bvmul #b00000000000111001 i1)) (bvslt i1 (bvmul #b00000000000111011 i1)))) (=> (not (= i2 #b00000000000101010)) (not (= (bvadd #b00000000000100100 i1) i2)))))

(check-sat)