(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-27385, 27462] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 16))

; Domain constraints
(assert (or (= i1 #b0000000001001101) (= i1 #b0000000010001001) (= i1 #b0000000011100110) (= i1 #b0000000101011000) (= i1 #b0000001001010101)))

; Formula constraint
(assert (or (bvsgt (bvsub i1 (bvmul #b0000000000101110 i1)) i1) (=> (and (bvsle #b0000000000000110 #b1111111110111111) (bvsle (bvsub #b1111111110111001 i1) i1)) (and (bvsge i1 #b0000000001000000) (bvsle #b1111111111111111 #b1111111111100000)))))

(check-sat)