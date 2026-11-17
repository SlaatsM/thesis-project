(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-38656, 477] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (and (bvsge i1 #b00000000000110101) (bvsle i1 #b00000000111011101)))

; Formula constraint
(assert (and (= #b00000000000111001 i1) (=> (=> (bvsgt i1 i1) (bvsge #b00000000000010100 i1)) (=> (= i1 (bvadd #b11111111111101101 (bvadd (bvmul #b11111111111001000 i1) (bvmul #b11111111111100111 i1)))) (bvslt i1 #b00000000000100010)))))

(check-sat)