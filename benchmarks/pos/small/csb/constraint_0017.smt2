(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-31960, 680] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 16))

; Domain constraints
(assert (and (bvsge i1 #b0000000101000100) (bvsle i1 #b0000000101010100)))

; Formula constraint
(assert (=> (=> (bvsgt #b0000000001011110 i1) (bvsgt (bvadd i1 #b0000000000010000) i1)) (=> (and (bvsgt (bvmul #b1111111110100010 i1) (bvadd (bvadd #b1111111110111010 i1) #b0000000000010010)) (bvslt (bvmul #b1111111111101100 i1) (bvsub #b1111111111111000 (bvadd i1 #b0000000001001001)))) (and (bvsgt (bvadd i1 i1) #b0000000000011010) (bvslt (bvadd #b0000000000110001 #b1111111110101010) i1)))))

(check-sat)