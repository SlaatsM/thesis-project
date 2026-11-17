(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-30576, 27440] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 16))

; Domain constraints
(assert (or (and (bvsge i1 #b0000000001011000) (bvsle i1 #b0000000001011001)) (= i1 #b0000000010010111) (= i1 #b0000000110001000)))

; Formula constraint
(assert (or (=> (= #b1111111111100111 (bvmul #b0000000001000110 i1)) (=> (= #b1111111111100000 i1) (bvslt #b0000000000111111 #b0000000000000001))) (not (bvsgt (bvsub (bvmul #b1111111111010100 i1) (bvmul #b0000000000100010 i1)) i1))))

(check-sat)