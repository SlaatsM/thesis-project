(set-logic QF_BV)

; Bit width chosen: 19 (covers range [-100093, 169416] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 19))

; Domain constraints
(assert (or (= i1 #b1111111110001011000) (= i1 #b1111111111000011010) (= i1 #b0000000001000101001)))

; Formula constraint
(assert (=> (not (= (bvadd #b0000000000000100010 #b1111111111111101010) (bvsub i1 i1))) (or (and (bvsgt i1 (bvsub (bvmul #b1111111111110100111 i1) (bvmul #b0000000000001011100 i1))) (bvslt (bvadd (bvmul #b1111111111111100110 i1) i1) (bvadd #b1111111111110111010 (bvsub i1 #b0000000000000111010)))) (not (bvsgt (bvsub #b1111111111111000000 i1) #b1111111111111101100)))))

(check-sat)