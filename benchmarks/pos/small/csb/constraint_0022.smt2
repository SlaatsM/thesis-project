(set-logic QF_BV)

; Bit width chosen: 14 (covers range [-7739, 7722] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 14))

; Domain constraints
(assert (or (= i1 #b00000000000111) (= i1 #b00000001100011)))

; Formula constraint
(assert (and (and (bvsge i1 i1) (bvsgt i1 #b11111111101101)) (=> (=> (bvsgt (bvsub #b11111111000000 (bvsub (bvmul #b00000001001110 i1) #b00000000101111)) (bvadd #b11111111101100 i1)) (bvsge i1 #b00000000110000)) (=> (not (= (bvsub i1 (bvsub i1 i1)) (bvmul #b00000000110000 i1))) (bvsle #b11111110100111 #b11111111110010)))))

(check-sat)