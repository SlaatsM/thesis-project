(set-logic QF_BV)

; Bit width chosen: 17 (covers range [106, 35776] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 17))
(declare-const a1_1 (_ BitVec 17))
(declare-const a1_2 (_ BitVec 17))
(declare-const a1_3 (_ BitVec 17))
(declare-const a7_0_i10 (_ BitVec 17))
(declare-const a7_1_i10 (_ BitVec 17))
(declare-const a7_2_i10 (_ BitVec 17))
(declare-const h3_a5_0 (_ BitVec 17))
(declare-const h3_a5_1 (_ BitVec 17))
(declare-const h3_a5_2 (_ BitVec 17))
(declare-const h3_a5_3 (_ BitVec 17))
(declare-const h3_i4 (_ BitVec 17))
(declare-const i11 (_ BitVec 17))
(declare-const i12 (_ BitVec 17))

; Domain constraints
(assert (and (bvsge a1_0 #b00000000001101010) (bvsle a1_0 #b00000001000101111)))
(assert (and (bvsge a1_1 #b00000000001101010) (bvsle a1_1 #b00000001000101111)))
(assert (and (bvsge a1_2 #b00000000001101010) (bvsle a1_2 #b00000001000101111)))
(assert (and (bvsge a1_3 #b00000000001101010) (bvsle a1_3 #b00000001000101111)))
(assert (and (bvsge a7_0_i10 #b00000000110011010) (bvsle a7_0_i10 #b00000001111011010)))
(assert (and (bvsge a7_1_i10 #b00000000110011010) (bvsle a7_1_i10 #b00000001111011010)))
(assert (and (bvsge a7_2_i10 #b00000000110011010) (bvsle a7_2_i10 #b00000001111011010)))
(assert (or (= h3_a5_0 #b00000000111011111) (= h3_a5_0 #b00000001001111111)))
(assert (or (= h3_a5_1 #b00000000111011111) (= h3_a5_1 #b00000001001111111)))
(assert (or (= h3_a5_2 #b00000000111011111) (= h3_a5_2 #b00000001001111111)))
(assert (or (= h3_a5_3 #b00000000111011111) (= h3_a5_3 #b00000001001111111)))
(assert (and (bvsge h3_i4 #b00000000101011100) (bvsle h3_i4 #b00000001011110110)))
(assert (and (bvsge i11 #b00000000101000000) (bvsle i11 #b00000001101100010)))
(assert (and (bvsge i12 #b00000000111110010) (bvsle i12 #b00000001110010100)))

; Formula constraint
(assert (bvsle h3_a5_0 (bvadd (bvmul #b00000000000111111 a1_0) a1_1)))

(check-sat)