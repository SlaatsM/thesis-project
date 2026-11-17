(set-logic QF_BV)

; Bit width chosen: 15 (covers range [-942, 15300] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h14_h15_i16 (_ BitVec 15))
(declare-const h2_h4_a5_0 (_ BitVec 15))
(declare-const h2_h4_a5_1 (_ BitVec 15))
(declare-const h2_h4_a5_2 (_ BitVec 15))
(declare-const h2_h4_a5_3 (_ BitVec 15))
(declare-const h2_h4_i7 (_ BitVec 15))
(declare-const h2_h4_i8 (_ BitVec 15))
(declare-const h2_i11 (_ BitVec 15))
(declare-const h2_i3 (_ BitVec 15))
(declare-const i1 (_ BitVec 15))
(declare-const i12 (_ BitVec 15))
(declare-const i13 (_ BitVec 15))

; Domain constraints
(assert (and (bvsge h14_h15_i16 #b000000011011010) (bvsle h14_h15_i16 #b000001101100110)))
(assert (and (bvsge h2_h4_a5_0 #b111111100110100) (bvsle h2_h4_a5_0 #b111111111011010)))
(assert (and (bvsge h2_h4_a5_1 #b111111100110100) (bvsle h2_h4_a5_1 #b111111111011010)))
(assert (and (bvsge h2_h4_a5_2 #b111111100110100) (bvsle h2_h4_a5_2 #b111111111011010)))
(assert (and (bvsge h2_h4_a5_3 #b111111100110100) (bvsle h2_h4_a5_3 #b111111111011010)))
(assert (and (bvsge h2_h4_i7 #b111110010111100) (bvsle h2_h4_i7 #b111111010110111)))
(assert (and (bvsge h2_h4_i8 #b111110110010111) (bvsle h2_h4_i8 #b000001101000010)))
(assert (or (= h2_i11 #b111111101101000) (= h2_i11 #b000001000100000)))
(assert (and (bvsge h2_i3 #b111110001010010) (bvsle h2_i3 #b000001010000100)))
(assert (and (bvsge i1 #b111110001011010) (bvsle i1 #b000001111010010)))
(assert (and (bvsge i12 #b111111101001111) (bvsle i12 #b000000011011101)))
(assert (or (= i13 #b111111001001010) (= i13 #b111111001010111) (= i13 #b111111100000011) (= i13 #b000001101001101) (= i13 #b000001110001001)))

; Formula constraint
(assert (=> (and (bvsgt h2_h4_a5_2 i1) (not (bvsle #b000000000010011 #b000000001001100))) (and (or (bvsgt h2_h4_a5_1 #b000000000000100) (not (= #b000000001010111 h2_h4_a5_0))) (and (bvsgt #b000000000001001 (bvmul #b111111110110101 h2_h4_a5_2)) (bvslt h2_i3 #b000000001000100)))))

(check-sat)