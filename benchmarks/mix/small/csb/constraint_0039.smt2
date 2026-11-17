(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-41610, 46262] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b11111111000111010) (= i1 #b11111111011000111) (= i1 #b11111111100000000) (= i1 #b00000001110001000) (= i1 #b00000001110010111)))

; Formula constraint
(assert (bvsgt (bvadd (bvsub (bvmul #b11111111111100101 i1) #b11111111111111111) (bvadd (bvmul #b00000000000000101 i1) (bvmul #b00000000000100000 i1))) (bvadd i1 i1)))

(check-sat)