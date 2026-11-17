(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-30366, 50337] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h1_i2 (_ BitVec 17))
(declare-const i3 (_ BitVec 17))

; Domain constraints
(assert (or (= h1_i2 #b11111111111100011) (= h1_i2 #b00000000110110111)))
(assert (or (= i3 #b11111111000011110) (= i3 #b00000000010101011) (= i3 #b00000000100110000) (= i3 #b00000000101100101) (= i3 #b00000001100011111)))

; Formula constraint
(assert (not (or (or (bvsle h1_i2 (bvadd (bvadd (bvmul #b00000000000011000 h1_i2) (bvmul #b00000000000011011 i3)) (bvsub #b00000000000011010 h1_i2))) (bvslt i3 (bvmul #b00000000000011100 h1_i2))) (and (bvsle (bvadd h1_i2 #b00000000000100110) (bvmul #b00000000000101110 i3)) (bvsgt (bvmul #b00000000000111111 i3) #b00000000001100010)))))

(check-sat)