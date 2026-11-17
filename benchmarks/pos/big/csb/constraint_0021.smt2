(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-33862, 33864] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0_0 (_ BitVec 17))
(declare-const a1_0_1 (_ BitVec 17))
(declare-const a1_0_2 (_ BitVec 17))
(declare-const a1_1_0 (_ BitVec 17))
(declare-const a1_1_1 (_ BitVec 17))
(declare-const a1_1_2 (_ BitVec 17))
(declare-const a1_2_0 (_ BitVec 17))
(declare-const a1_2_1 (_ BitVec 17))
(declare-const a1_2_2 (_ BitVec 17))
(declare-const a1_3_0 (_ BitVec 17))
(declare-const a1_3_1 (_ BitVec 17))
(declare-const a1_3_2 (_ BitVec 17))
(declare-const a1_4_0 (_ BitVec 17))
(declare-const a1_4_1 (_ BitVec 17))
(declare-const a1_4_2 (_ BitVec 17))
(declare-const i7 (_ BitVec 17))

; Domain constraints
(assert (and (bvsge a1_0_0 #b00000000101101010) (bvsle a1_0_0 #b00000001111100100)))
(assert (and (bvsge a1_0_1 #b00000000101101010) (bvsle a1_0_1 #b00000001111100100)))
(assert (and (bvsge a1_0_2 #b00000000101101010) (bvsle a1_0_2 #b00000001111100100)))
(assert (and (bvsge a1_1_0 #b00000000101101010) (bvsle a1_1_0 #b00000001111100100)))
(assert (and (bvsge a1_1_1 #b00000000101101010) (bvsle a1_1_1 #b00000001111100100)))
(assert (and (bvsge a1_1_2 #b00000000101101010) (bvsle a1_1_2 #b00000001111100100)))
(assert (and (bvsge a1_2_0 #b00000000101101010) (bvsle a1_2_0 #b00000001111100100)))
(assert (and (bvsge a1_2_1 #b00000000101101010) (bvsle a1_2_1 #b00000001111100100)))
(assert (and (bvsge a1_2_2 #b00000000101101010) (bvsle a1_2_2 #b00000001111100100)))
(assert (and (bvsge a1_3_0 #b00000000101101010) (bvsle a1_3_0 #b00000001111100100)))
(assert (and (bvsge a1_3_1 #b00000000101101010) (bvsle a1_3_1 #b00000001111100100)))
(assert (and (bvsge a1_3_2 #b00000000101101010) (bvsle a1_3_2 #b00000001111100100)))
(assert (and (bvsge a1_4_0 #b00000000101101010) (bvsle a1_4_0 #b00000001111100100)))
(assert (and (bvsge a1_4_1 #b00000000101101010) (bvsle a1_4_1 #b00000001111100100)))
(assert (and (bvsge a1_4_2 #b00000000101101010) (bvsle a1_4_2 #b00000001111100100)))
(assert (or (and (bvsge i7 #b00000000011010111) (bvsle i7 #b00000001011100110)) (= i7 #b00000001101011101)))

; Formula constraint
(assert (or (=> (=> (bvsgt #b00000000001010111 a1_4_1) (bvsle #b00000000001001100 (bvsub (bvadd #b00000000000100001 #b11111111111100001) (bvmul #b00000000000100010 a1_2_1)))) (= a1_3_2 a1_1_1)) (bvsge (bvadd (bvadd #b11111111111001010 (bvmul #b11111111111100000 a1_0_2)) a1_2_0) #b00000000000011010)))

(check-sat)