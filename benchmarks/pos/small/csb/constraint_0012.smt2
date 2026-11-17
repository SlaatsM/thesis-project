(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-10571, 37479] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b00000000010010000) (= i1 #b00000000011010100) (= i1 #b00000000101111101) (= i1 #b00000001111000001)))

; Formula constraint
(assert (=> (and (and (bvsge i1 i1) (bvsgt #b00000000000110001 (bvadd (bvmul #b00000000000100000 i1) i1))) (and (bvsle (bvadd i1 i1) (bvsub (bvmul #b11111111111110110 i1) i1)) (not (= #b11111111110011110 #b00000000001000111)))) (=> (and (bvsgt i1 i1) (bvsle (bvmul #b00000000000100111 i1) (bvmul #b00000000000000110 i1))) (and (bvslt i1 i1) (bvslt (bvmul #b00000000000000110 i1) #b11111111111000001)))))

(check-sat)