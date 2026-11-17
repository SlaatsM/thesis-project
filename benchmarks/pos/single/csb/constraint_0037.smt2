(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-38976, 39648] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b00000000000000010) (= i1 #b00000000010101101) (= i1 #b00000000011011001) (= i1 #b00000001010100000)))

; Formula constraint
(assert (and (bvsle #b11111111111111111 (bvsub i1 (bvmul #b11111111111000110 i1))) (and (not (bvslt i1 i1)) (and (bvsge i1 #b11111111111000011) (bvsge #b00000000001001110 i1)))))

(check-sat)