(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-60675, 6600] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b11111110011010111) (= i1 #b00000000001011000)))

; Formula constraint
(assert (=> (and (and (bvslt i1 (bvsub #b11111111111110111 i1)) (not (= i1 i1))) (and (bvsge i1 #b00000000000110010) (not (= #b11111111111001101 i1)))) (bvslt (bvmul #b00000000001001011 i1) i1)))

(check-sat)