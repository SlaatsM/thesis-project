(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-61766, 66377] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b111111110101001010) (= i1 #b000000000111100000) (= i1 #b000000001011101001)))

; Formula constraint
(assert (and (and (=> (bvsgt i1 i1) (bvsgt (bvadd #b000000000001100010 i1) (bvmul #b111111111110110110 i1))) (and (not (= (bvadd #b000000000001001000 (bvadd i1 (bvmul #b000000000001011000 i1))) (bvmul #b000000000001001111 i1))) (bvslt i1 #b111111111110111110))) (or (bvslt i1 (bvsub i1 (bvmul #b111111111111101101 i1))) (not (bvsgt i1 i1)))))

(check-sat)