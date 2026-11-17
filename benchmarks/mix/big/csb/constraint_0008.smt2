(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-29349, 48353] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h14_a15_0 (_ BitVec 17))
(declare-const h14_i17 (_ BitVec 17))
(declare-const h14_i20 (_ BitVec 17))
(declare-const h2_h10_i12 (_ BitVec 17))
(declare-const h2_h10_i13 (_ BitVec 17))
(declare-const h2_h3_i4 (_ BitVec 17))
(declare-const h2_h3_i5 (_ BitVec 17))
(declare-const h2_h7_i8 (_ BitVec 17))
(declare-const h2_h7_i9 (_ BitVec 17))
(declare-const i1 (_ BitVec 17))
(declare-const i21 (_ BitVec 17))

; Domain constraints
(assert (or (= h14_a15_0 #b11111110000110011) (= h14_a15_0 #b11111111100001001) (= h14_a15_0 #b00000000110010001) (= h14_a15_0 #b00000001000111100)))
(assert (and (bvsge h14_i17 #b11111111001111111) (bvsle h14_i17 #b00000000001101001)))
(assert (and (bvsge h14_i20 #b11111110011111000) (bvsle h14_i20 #b00000001011110001)))
(assert (and (bvsge h2_h10_i12 #b11111110101110101) (bvsle h2_h10_i12 #b00000000110101010)))
(assert (and (bvsge h2_h10_i13 #b11111110001101111) (bvsle h2_h10_i13 #b11111110111111011)))
(assert (and (bvsge h2_h3_i4 #b11111111100100110) (bvsle h2_h3_i4 #b00000001010011110)))
(assert (and (bvsge h2_h3_i5 #b11111111000111010) (bvsle h2_h3_i5 #b11111111111011001)))
(assert (and (bvsge h2_h7_i8 #b00000000000010010) (bvsle h2_h7_i8 #b00000001011100011)))
(assert (or (= h2_h7_i9 #b00000000011011000) (= h2_h7_i9 #b00000001100001000)))
(assert (or (and (bvsge i1 #b11111111111001001) (bvsle i1 #b00000000011001101)) (= i1 #b00000001000001110) (= i1 #b00000001111001010)))
(assert (and (bvsge i21 #b00000000110111110) (bvsle i21 #b00000001011011101)))

; Formula constraint
(assert (or (not (= h2_h7_i8 h14_a15_0)) (and (bvslt h2_h10_i13 h14_i17) (=> (bvsgt i1 #b11111111110111100) (bvslt (bvsub (bvmul #b11111111110101011 h2_h3_i5) (bvsub (bvmul #b11111111110101010 h14_i17) i21)) #b00000000000010100)))))

(check-sat)