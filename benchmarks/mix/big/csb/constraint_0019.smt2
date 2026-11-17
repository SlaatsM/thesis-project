(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-22773, 21805] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 16))
(declare-const a1_1 (_ BitVec 16))
(declare-const a1_2 (_ BitVec 16))
(declare-const a1_3 (_ BitVec 16))
(declare-const a1_4 (_ BitVec 16))
(declare-const i3 (_ BitVec 16))
(declare-const i4 (_ BitVec 16))

; Domain constraints
(assert (or (and (bvsge a1_0 #b1111110110010001) (bvsle a1_0 #b0000000011101111)) (= a1_0 #b0000000110100111)))
(assert (or (and (bvsge a1_1 #b1111110110010001) (bvsle a1_1 #b0000000011101111)) (= a1_1 #b0000000110100111)))
(assert (or (and (bvsge a1_2 #b1111110110010001) (bvsle a1_2 #b0000000011101111)) (= a1_2 #b0000000110100111)))
(assert (or (and (bvsge a1_3 #b1111110110010001) (bvsle a1_3 #b0000000011101111)) (= a1_3 #b0000000110100111)))
(assert (or (and (bvsge a1_4 #b1111110110010001) (bvsle a1_4 #b0000000011101111)) (= a1_4 #b0000000110100111)))
(assert (and (bvsge i3 #b1111110000111000) (bvsle i3 #b0000001110010100)))
(assert (or (= i4 #b1111110011011101) (= i4 #b1111111000001101) (= i4 #b1111111001111111) (= i4 #b0000000000110001)))

; Formula constraint
(assert (bvsle (bvsub (bvsub i3 (bvmul #b1111111111011101 a1_1)) #b1111111111111111) #b1111111110111111))

(check-sat)