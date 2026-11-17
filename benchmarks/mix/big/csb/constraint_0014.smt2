(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-18154, 45994] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a3_0_i5 (_ BitVec 17))
(declare-const a3_0_i6 (_ BitVec 17))
(declare-const a3_1_i5 (_ BitVec 17))
(declare-const a3_1_i6 (_ BitVec 17))
(declare-const a3_2_i5 (_ BitVec 17))
(declare-const a3_2_i6 (_ BitVec 17))
(declare-const a3_3_i5 (_ BitVec 17))
(declare-const a3_3_i6 (_ BitVec 17))
(declare-const a3_4_i5 (_ BitVec 17))
(declare-const a3_4_i6 (_ BitVec 17))
(declare-const a3_5_i5 (_ BitVec 17))
(declare-const a3_5_i6 (_ BitVec 17))
(declare-const h1_i2 (_ BitVec 17))

; Domain constraints
(assert (or (= a3_0_i5 #b11111110011100111) (and (bvsge a3_0_i5 #b11111110101000000) (bvsle a3_0_i5 #b11111111011111010)) (= a3_0_i5 #b00000000100111001)))
(assert (or (= a3_0_i6 #b11111111111101000) (= a3_0_i6 #b00000000000010101) (= a3_0_i6 #b00000000011011001) (= a3_0_i6 #b00000000011110010)))
(assert (or (= a3_1_i5 #b11111110011100111) (and (bvsge a3_1_i5 #b11111110101000000) (bvsle a3_1_i5 #b11111111011111010)) (= a3_1_i5 #b00000000100111001)))
(assert (or (= a3_1_i6 #b11111111111101000) (= a3_1_i6 #b00000000000010101) (= a3_1_i6 #b00000000011011001) (= a3_1_i6 #b00000000011110010)))
(assert (or (= a3_2_i5 #b11111110011100111) (and (bvsge a3_2_i5 #b11111110101000000) (bvsle a3_2_i5 #b11111111011111010)) (= a3_2_i5 #b00000000100111001)))
(assert (or (= a3_2_i6 #b11111111111101000) (= a3_2_i6 #b00000000000010101) (= a3_2_i6 #b00000000011011001) (= a3_2_i6 #b00000000011110010)))
(assert (or (= a3_3_i5 #b11111110011100111) (and (bvsge a3_3_i5 #b11111110101000000) (bvsle a3_3_i5 #b11111111011111010)) (= a3_3_i5 #b00000000100111001)))
(assert (or (= a3_3_i6 #b11111111111101000) (= a3_3_i6 #b00000000000010101) (= a3_3_i6 #b00000000011011001) (= a3_3_i6 #b00000000011110010)))
(assert (or (= a3_4_i5 #b11111110011100111) (and (bvsge a3_4_i5 #b11111110101000000) (bvsle a3_4_i5 #b11111111011111010)) (= a3_4_i5 #b00000000100111001)))
(assert (or (= a3_4_i6 #b11111111111101000) (= a3_4_i6 #b00000000000010101) (= a3_4_i6 #b00000000011011001) (= a3_4_i6 #b00000000011110010)))
(assert (or (= a3_5_i5 #b11111110011100111) (and (bvsge a3_5_i5 #b11111110101000000) (bvsle a3_5_i5 #b11111111011111010)) (= a3_5_i5 #b00000000100111001)))
(assert (or (= a3_5_i6 #b11111111111101000) (= a3_5_i6 #b00000000000010101) (= a3_5_i6 #b00000000011011001) (= a3_5_i6 #b00000000011110010)))
(assert (and (bvsge h1_i2 #b11111111111011011) (bvsle h1_i2 #b00000001011110101)))

; Formula constraint
(assert (=> (and (=> (bvsge #b11111111111010100 a3_2_i6) (= h1_i2 a3_1_i5)) (or (bvslt (bvsub #b00000000001011011 #b11111111110110000) #b00000000000100010) (bvslt #b00000000000010111 a3_5_i6))) (and (and (bvsgt (bvmul #b11111111111000110 a3_3_i5) #b00000000000011001) (= a3_1_i6 #b00000000001000010)) (=> (bvslt (bvadd #b00000000000001101 #b11111111111010000) #b11111111111101000) (not (= #b11111111111000111 a3_1_i5))))))

(check-sat)