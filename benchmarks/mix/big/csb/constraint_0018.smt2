(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-42560, 54188] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 17))
(declare-const a1_1 (_ BitVec 17))
(declare-const a1_2 (_ BitVec 17))
(declare-const a1_3 (_ BitVec 17))
(declare-const h3_a4_0 (_ BitVec 17))
(declare-const h3_i6 (_ BitVec 17))
(declare-const h3_i7 (_ BitVec 17))
(declare-const h9_a13_0 (_ BitVec 17))
(declare-const h9_i12 (_ BitVec 17))
(declare-const h9_i15 (_ BitVec 17))
(declare-const i16 (_ BitVec 17))
(declare-const i8 (_ BitVec 17))

; Domain constraints
(assert (and (bvsge a1_0 #b11111111110101000) (bvsle a1_0 #b00000001011111000)))
(assert (and (bvsge a1_1 #b11111111110101000) (bvsle a1_1 #b00000001011111000)))
(assert (and (bvsge a1_2 #b11111111110101000) (bvsle a1_2 #b00000001011111000)))
(assert (and (bvsge a1_3 #b11111111110101000) (bvsle a1_3 #b00000001011111000)))
(assert (or (= h3_a4_0 #b11111110111010000) (= h3_a4_0 #b00000001011001001)))
(assert (or (and (bvsge h3_i6 #b11111110110010110) (bvsle h3_i6 #b11111111000101001)) (= h3_i6 #b00000000010001000)))
(assert (or (and (bvsge h3_i7 #b11111111101001010) (bvsle h3_i7 #b00000000001001110)) (= h3_i7 #b00000001010111110)))
(assert (or (= h9_a13_0 #b11111111101000101) (= h9_a13_0 #b00000000111001110)))
(assert (and (bvsge h9_i12 #b00000001000110011) (bvsle h9_i12 #b00000001110001110)))
(assert (or (= h9_i15 #b11111110000110011) (and (bvsge h9_i15 #b11111110100110001) (bvsle h9_i15 #b11111111000110000)) (= h9_i15 #b11111111100001001) (= h9_i15 #b00000001100101010)))
(assert (and (bvsge i16 #b00000000111110101) (bvsle i16 #b00000001001010010)))
(assert (and (bvsge i8 #b11111111010011001) (bvsle i8 #b00000000100000111)))

; Formula constraint
(assert (or (and (=> (bvslt (bvmul #b11111111111100101 h3_i7) h9_i12) (bvsle h3_i6 (bvadd #b11111111110110010 #b11111111111110001))) (bvslt #b00000000001100001 #b00000000000111111)) (or (or (bvsge #b11111111111100010 (bvsub h9_i15 h3_i7)) (bvsle i16 (bvmul #b00000000001001100 h3_a4_0))) (and (not (= a1_2 #b00000000000110001)) (bvsgt (bvmul #b11111111110111101 i16) h9_i12)))))

(check-sat)