(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-64602, 52662] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))
(declare-const i2 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b00000000001010110) (and (bvsge i1 #b00000000011111110) (bvsle i1 #b00000001100100010)) (= i1 #b00000001101101001)))
(assert (or (= i2 #b00000000001010001) (= i2 #b00000000011001110) (= i2 #b00000001100010010)))

; Formula constraint
(assert (and (=> (bvsge i2 #b11111111111100101) (and (not (= (bvadd #b11111111111011111 (bvmul #b00000000001000011 i2)) #b00000000000011111)) (bvsge #b11111111111000000 #b11111111110101110))) (and (not (bvsgt (bvmul #b00000000000001000 i1) i2)) (bvslt (bvmul #b11111111110110110 i1) (bvmul #b00000000000110100 i1)))))

(check-sat)