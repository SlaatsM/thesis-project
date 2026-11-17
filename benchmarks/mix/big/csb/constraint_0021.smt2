(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-2058, 53116] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a2_0 (_ BitVec 17))
(declare-const a2_1 (_ BitVec 17))
(declare-const a2_2 (_ BitVec 17))
(declare-const a2_3 (_ BitVec 17))
(declare-const a2_4 (_ BitVec 17))
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (and (bvsge a2_0 #b11111110111100010) (bvsle a2_0 #b00000000000010101)))
(assert (and (bvsge a2_1 #b11111110111100010) (bvsle a2_1 #b00000000000010101)))
(assert (and (bvsge a2_2 #b11111110111100010) (bvsle a2_2 #b00000000000010101)))
(assert (and (bvsge a2_3 #b11111110111100010) (bvsle a2_3 #b00000000000010101)))
(assert (and (bvsge a2_4 #b11111110111100010) (bvsle a2_4 #b00000000000010101)))
(assert (and (bvsge i1 #b11111110110111101) (bvsle i1 #b00000000010000111)))

; Formula constraint
(assert (= (bvsub i1 (bvsub #b00000000001000000 a2_0)) (bvmul #b11111111110011110 a2_2)))

(check-sat)