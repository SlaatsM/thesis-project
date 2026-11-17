(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-84, 21000] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a2_0 (_ BitVec 16))
(declare-const a2_1 (_ BitVec 16))
(declare-const a2_2 (_ BitVec 16))
(declare-const i1 (_ BitVec 16))

; Domain constraints
(assert (or (= a2_0 #b0000000011000001) (= a2_0 #b0000001101101011)))
(assert (or (= a2_1 #b0000000011000001) (= a2_1 #b0000001101101011)))
(assert (or (= a2_2 #b0000000011000001) (= a2_2 #b0000001101101011)))
(assert (and (bvsge i1 #b0000001011001000) (bvsle i1 #b0000001011010010)))

; Formula constraint
(assert (and (=> (not (bvslt a2_1 a2_0)) (= #b0000000000101011 #b1111111111110000)) (bvsle #b1111111110101100 (bvmul #b0000000000011000 a2_1))))

(check-sat)