(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-64124, 56829] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))
(declare-const i2 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b11111110011001000) (= i1 #b11111110110100011) (= i1 #b11111110110110100) (= i1 #b00000001101000110) (= i1 #b00000001111100101)))
(assert (or (= i2 #b11111110011110010) (= i2 #b11111110110100100) (= i2 #b00000000101110101)))

; Formula constraint
(assert (=> (=> (=> (bvsge #b00000000000011100 i2) (bvsgt i2 #b11111111110111001)) (and (bvsgt (bvadd i2 #b00000000000100011) #b00000000000011000) (not (= #b11111111110111000 (bvsub (bvmul #b00000000001010010 i2) #b11111111110101010))))) (bvsgt (bvsub (bvmul #b11111111111100100 i2) i1) (bvmul #b00000000000111001 i1))))

(check-sat)