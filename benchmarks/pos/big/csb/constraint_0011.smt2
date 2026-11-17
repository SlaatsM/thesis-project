(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-69750, 69687] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0_a3_0 (_ BitVec 18))
(declare-const a1_0_a3_1 (_ BitVec 18))
(declare-const a1_0_a3_2 (_ BitVec 18))
(declare-const a1_0_a3_3 (_ BitVec 18))
(declare-const a1_1_a3_0 (_ BitVec 18))
(declare-const a1_1_a3_1 (_ BitVec 18))
(declare-const a1_1_a3_2 (_ BitVec 18))
(declare-const a1_1_a3_3 (_ BitVec 18))
(declare-const h7_i8 (_ BitVec 18))
(declare-const h9_i10 (_ BitVec 18))
(declare-const h9_i11 (_ BitVec 18))
(declare-const i5 (_ BitVec 18))
(declare-const i6 (_ BitVec 18))

; Domain constraints
(assert (and (bvsge a1_0_a3_0 #b000000001001101100) (bvsle a1_0_a3_0 #b000000001100000111)))
(assert (and (bvsge a1_0_a3_1 #b000000001001101100) (bvsle a1_0_a3_1 #b000000001100000111)))
(assert (and (bvsge a1_0_a3_2 #b000000001001101100) (bvsle a1_0_a3_2 #b000000001100000111)))
(assert (and (bvsge a1_0_a3_3 #b000000001001101100) (bvsle a1_0_a3_3 #b000000001100000111)))
(assert (and (bvsge a1_1_a3_0 #b000000001001101100) (bvsle a1_1_a3_0 #b000000001100000111)))
(assert (and (bvsge a1_1_a3_1 #b000000001001101100) (bvsle a1_1_a3_1 #b000000001100000111)))
(assert (and (bvsge a1_1_a3_2 #b000000001001101100) (bvsle a1_1_a3_2 #b000000001100000111)))
(assert (and (bvsge a1_1_a3_3 #b000000001001101100) (bvsle a1_1_a3_3 #b000000001100000111)))
(assert (or (= h7_i8 #b000000000010101110) (= h7_i8 #b000000000011011010) (= h7_i8 #b000000001010000000) (= h7_i8 #b000000001101111001) (= h7_i8 #b000000001111000011)))
(assert (and (bvsge h9_i10 #b000000000100111100) (bvsle h9_i10 #b000000001010000001)))
(assert (and (bvsge h9_i11 #b000000000000010100) (bvsle h9_i11 #b000000000011010000)))
(assert (and (bvsge i5 #b000000000000100010) (bvsle i5 #b000000000001011011)))
(assert (or (= i6 #b000000000000111011) (and (bvsge i6 #b000000000100101101) (bvsle i6 #b000000001101011011))))

; Formula constraint
(assert (and (=> (or (bvsge (bvmul #b000000000000000110 i6) #b000000000000011101) (bvslt h7_i8 a1_1_a3_2)) (=> (bvsge i5 h9_i10) (bvsle (bvadd a1_1_a3_1 (bvmul #b000000000000110110 h9_i10)) a1_0_a3_3))) (=> (= #b111111111110100011 i6) (or (bvslt i5 (bvmul #b111111111110101110 a1_0_a3_2)) (bvsge (bvsub #b111111111111000001 (bvmul #b111111111110100110 a1_1_a3_0)) a1_0_a3_0)))))

(check-sat)