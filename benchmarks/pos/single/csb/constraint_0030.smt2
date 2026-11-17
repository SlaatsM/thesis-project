(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-63827, 769] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h1_i2 (_ BitVec 17))
(declare-const i3 (_ BitVec 17))

; Domain constraints
(assert (or (= h1_i2 #b00000000010001001) (= h1_i2 #b00000001001111111)))
(assert (or (= i3 #b00000000000000010) (= i3 #b00000000110010010) (= i3 #b00000001100000001)))

; Formula constraint
(assert (or (bvslt i3 i3) (and (not (bvslt i3 #b11111111111010101)) (bvsle i3 (bvadd (bvadd h1_i2 (bvmul #b11111111110101101 i3)) #b11111111110011100)))))

(check-sat)