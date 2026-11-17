(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-15075, 31397] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a13_0 (_ BitVec 16))
(declare-const a13_1 (_ BitVec 16))
(declare-const a13_2 (_ BitVec 16))
(declare-const a13_3 (_ BitVec 16))
(declare-const h1_h3_a4_0 (_ BitVec 16))
(declare-const h1_h3_a4_1 (_ BitVec 16))
(declare-const h1_h3_a4_2 (_ BitVec 16))
(declare-const h1_h3_a4_3 (_ BitVec 16))
(declare-const h1_h3_a4_4 (_ BitVec 16))
(declare-const h1_h3_a4_5 (_ BitVec 16))
(declare-const h1_h7_i8 (_ BitVec 16))
(declare-const h1_h7_i9 (_ BitVec 16))
(declare-const h1_i2 (_ BitVec 16))
(declare-const i10 (_ BitVec 16))
(declare-const i11 (_ BitVec 16))
(declare-const i12 (_ BitVec 16))

; Domain constraints
(assert (or (= a13_0 #b1111110000110111) (= a13_0 #b0000000000111011) (= a13_0 #b0000000111100011)))
(assert (or (= a13_1 #b1111110000110111) (= a13_1 #b0000000000111011) (= a13_1 #b0000000111100011)))
(assert (or (= a13_2 #b1111110000110111) (= a13_2 #b0000000000111011) (= a13_2 #b0000000111100011)))
(assert (or (= a13_3 #b1111110000110111) (= a13_3 #b0000000000111011) (= a13_3 #b0000000111100011)))
(assert (and (bvsge h1_h3_a4_0 #b1111110001111100) (bvsle h1_h3_a4_0 #b0000000001011011)))
(assert (and (bvsge h1_h3_a4_1 #b1111110001111100) (bvsle h1_h3_a4_1 #b0000000001011011)))
(assert (and (bvsge h1_h3_a4_2 #b1111110001111100) (bvsle h1_h3_a4_2 #b0000000001011011)))
(assert (and (bvsge h1_h3_a4_3 #b1111110001111100) (bvsle h1_h3_a4_3 #b0000000001011011)))
(assert (and (bvsge h1_h3_a4_4 #b1111110001111100) (bvsle h1_h3_a4_4 #b0000000001011011)))
(assert (and (bvsge h1_h3_a4_5 #b1111110001111100) (bvsle h1_h3_a4_5 #b0000000001011011)))
(assert (and (bvsge h1_h7_i8 #b0000001010011101) (bvsle h1_h7_i8 #b0000001110011111)))
(assert (or (= h1_h7_i9 #b1111110001101111) (= h1_h7_i9 #b1111110010100100) (= h1_h7_i9 #b1111111010001111) (= h1_h7_i9 #b0000001011000110) (= h1_h7_i9 #b0000001101101001)))
(assert (and (bvsge h1_i2 #b1111111110011110) (bvsle h1_i2 #b0000000011001001)))
(assert (or (= i10 #b1111111101011010) (= i10 #b0000001001101010) (= i10 #b0000001010000001)))
(assert (and (bvsge i11 #b1111110111011011) (bvsle i11 #b1111111111110001)))
(assert (and (bvsge i12 #b1111111101000000) (bvsle i12 #b0000001100011101)))

; Formula constraint
(assert (or (and (and (bvsle h1_i2 (bvadd (bvmul #b1111111111011110 h1_h3_a4_2) i12)) (bvsge #b1111111111011000 #b0000000000001110)) (bvsge (bvsub #b1111111111011101 #b1111111111111010) #b1111111111101001)) (not (and (bvsle (bvadd (bvsub #b0000000001011101 #b0000000000101101) #b1111111110100110) (bvadd #b0000000000101010 (bvsub #b1111111111010011 (bvmul #b1111111110110101 h1_i2)))) (bvsgt (bvadd (bvmul #b0000000000001011 h1_h3_a4_5) i11) (bvadd h1_h3_a4_4 h1_h7_i9))))))

(check-sat)