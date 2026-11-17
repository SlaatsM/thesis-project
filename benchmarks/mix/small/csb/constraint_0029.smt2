(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-26700, 1320] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 16))
(declare-const a1_1 (_ BitVec 16))

; Domain constraints
(assert (and (bvsge a1_0 #b1111111111101010) (bvsle a1_0 #b0000000110111101)))
(assert (and (bvsge a1_1 #b1111111111101010) (bvsle a1_1 #b0000000110111101)))

; Formula constraint
(assert (and (not (=> (bvsle #b1111111110111000 #b1111111111010001) (not (= (bvmul #b1111111111000100 a1_1) (bvmul #b1111111111100001 a1_0))))) (not (bvslt #b0000000001000101 (bvsub #b1111111111111001 a1_0)))))

(check-sat)