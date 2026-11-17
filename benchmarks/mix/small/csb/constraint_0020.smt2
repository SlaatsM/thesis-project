(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-26754, 122] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 16))

; Domain constraints
(assert (or (= i1 #b1111110111011110) (= i1 #b1111111010001100)))

; Formula constraint
(assert (or (bvsle (bvadd #b0000000000011110 i1) (bvsub #b0000000000110100 #b1111111110111010)) (and (and (bvsgt #b1111111110110100 (bvadd i1 #b0000000000011101)) (bvsle #b0000000000101111 #b0000000001100011)) (and (bvslt i1 #b1111111111100100) (= i1 (bvmul #b0000000000110001 i1))))))

(check-sat)