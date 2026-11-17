(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-63744, 64304] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))
(declare-const i2 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b00000000111101100) (= i1 #b00000001001000101) (= i1 #b00000001100000000)))
(assert (or (and (bvsge i2 #b00000000001111000) (bvsle i2 #b00000000110101010)) (= i2 #b00000001000110000)))

; Formula constraint
(assert (or (or (bvsgt i1 (bvmul #b00000000000010010 i2)) (and (bvsgt (bvsub i2 (bvmul #b11111111110101101 i1)) #b00000000000000000) (bvsge i2 i1))) (and (bvsge #b00000000000000000 i2) (=> (bvsgt #b00000000001000011 (bvsub i2 #b11111111111110010)) (bvsge #b00000000000000101 i2)))))

(check-sat)