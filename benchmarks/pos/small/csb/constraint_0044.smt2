(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-86, 51681] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b00000000110001010) (= i1 #b00000001101111011)))

; Formula constraint
(assert (or (and (not (bvsle i1 #b11111111110101010)) (bvsge (bvsub i1 #b11111111111011000) #b00000000000000010)) (=> (=> (bvsle #b00000000001000001 #b00000000000001100) (bvslt i1 #b00000000000110001)) (=> (bvsle (bvadd (bvmul #b00000000000111010 i1) #b00000000000000011) (bvadd i1 #b11111111111011000)) (bvsge i1 i1)))))

(check-sat)