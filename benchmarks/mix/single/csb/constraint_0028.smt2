(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-40508, 39312] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))
(declare-const i2 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b11111110111111000) (= i1 #b00000000001111110)))
(assert (and (bvsge i2 #b11111110011110101) (bvsle i2 #b00000001011110100)))

; Formula constraint
(assert (and (not (= #b00000000000101001 (bvmul #b00000000000110100 i2))) (and (and (= #b11111111111001001 i2) (bvsgt (bvsub (bvmul #b11111111110111001 i1) i2) (bvadd (bvadd i2 i2) #b00000000000000000))) (not (bvsgt i2 i2)))))

(check-sat)