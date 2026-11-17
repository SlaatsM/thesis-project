(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-14405, 17773] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 16))

; Domain constraints
(assert (and (bvsge i1 #b0000000100111101) (bvsle i1 #b0000000101001111)))

; Formula constraint
(assert (=> (not (not (bvsle (bvmul #b1111111111010101 i1) i1))) (=> (bvsle #b1111111111101000 i1) (=> (bvsge (bvadd #b0000000001100000 i1) (bvadd i1 (bvsub (bvmul #b0000000000110101 i1) i1))) (bvsgt (bvmul #b1111111111110000 i1) #b0000000001001111)))))

(check-sat)