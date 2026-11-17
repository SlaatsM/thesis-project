(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-21984, 1728] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a12_0 (_ BitVec 16))
(declare-const a12_1 (_ BitVec 16))
(declare-const a12_2 (_ BitVec 16))
(declare-const h2_h3_i5 (_ BitVec 16))
(declare-const h2_h3_i6 (_ BitVec 16))
(declare-const h2_i10 (_ BitVec 16))
(declare-const h2_i8 (_ BitVec 16))
(declare-const h2_i9 (_ BitVec 16))
(declare-const i1 (_ BitVec 16))
(declare-const i11 (_ BitVec 16))
(declare-const i14 (_ BitVec 16))

; Domain constraints
(assert (and (bvsge a12_0 #b0000000110010111) (bvsle a12_0 #b0000001101001011)))
(assert (and (bvsge a12_1 #b0000000110010111) (bvsle a12_1 #b0000001101001011)))
(assert (and (bvsge a12_2 #b0000000110010111) (bvsle a12_2 #b0000001101001011)))
(assert (and (bvsge h2_h3_i5 #b1111110100000000) (bvsle h2_h3_i5 #b1111111101001110)))
(assert (and (bvsge h2_h3_i6 #b1111110011011010) (bvsle h2_h3_i6 #b1111110111101101)))
(assert (and (bvsge h2_i10 #b0000000001100110) (bvsle h2_i10 #b0000001010101111)))
(assert (and (bvsge h2_i8 #b1111111010100110) (bvsle h2_i8 #b1111111101000000)))
(assert (and (bvsge h2_i9 #b1111111000100001) (bvsle h2_i9 #b0000001010101100)))
(assert (and (bvsge i1 #b1111111100101111) (bvsle i1 #b0000000110100110)))
(assert (or (= i11 #b1111111111011100) (= i11 #b0000000101001010) (= i11 #b0000000111001010)))
(assert (and (bvsge i14 #b1111111111101000) (bvsle i14 #b0000000010011101)))

; Formula constraint
(assert (or (not (and (bvsle #b1111111110111000 h2_i8) (bvsge (bvmul #b1111111111010000 i11) #b0000000000100000))) (=> (=> (bvsle #b0000000000001110 h2_h3_i5) (bvsge #b1111111110100100 #b0000000000111111)) (and (= h2_h3_i6 #b1111111110011111) (not (= a12_2 a12_1))))))

(check-sat)