(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-43291, 45540] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (and (bvsge i1 #b11111111000000110) (bvsle i1 #b00000000100011001)))

; Formula constraint
(assert (and (and (and (bvsge (bvsub i1 (bvmul #b00000000001001100 i1)) (bvadd i1 (bvadd i1 i1))) (= (bvmul #b11111111110100110 i1) i1)) (bvsgt #b00000000000101110 #b11111111111111010)) (not (= (bvsub (bvadd i1 i1) (bvadd (bvmul #b11111111110101101 i1) i1)) #b00000000001001110))))

(check-sat)