(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-767, 39234] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b00000000101010010) (= i1 #b00000000110010100) (= i1 #b00000001010111000) (= i1 #b00000001011011001) (= i1 #b00000001011110010)))

; Formula constraint
(assert (=> (and (or (bvslt (bvsub #b11111111111110011 i1) #b11111111111001110) (bvslt (bvsub (bvsub (bvmul #b00000000000110100 i1) #b11111111111100110) (bvadd i1 #b00000000000100011)) (bvsub i1 i1))) (bvsle #b11111111111011110 i1)) (bvsle (bvsub #b11111111110100111 #b11111111111111101) (bvmul #b00000000000001100 i1))))

(check-sat)