(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-78909, 62988] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h2_h4_a6_0 (_ BitVec 18))
(declare-const h2_h4_a6_1 (_ BitVec 18))
(declare-const h2_h4_a6_2 (_ BitVec 18))
(declare-const h2_h4_a6_3 (_ BitVec 18))
(declare-const h2_h4_a6_4 (_ BitVec 18))
(declare-const h2_h4_i8 (_ BitVec 18))
(declare-const h2_h9_a11_0 (_ BitVec 18))
(declare-const h2_h9_a11_1 (_ BitVec 18))
(declare-const h2_h9_a11_2 (_ BitVec 18))
(declare-const h2_h9_a11_3 (_ BitVec 18))
(declare-const h2_h9_a11_4 (_ BitVec 18))
(declare-const h2_h9_i10 (_ BitVec 18))
(declare-const h2_h9_i13 (_ BitVec 18))
(declare-const h2_i3 (_ BitVec 18))
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= h2_h4_a6_0 #b111111110001110101) (and (bvsge h2_h4_a6_0 #b111111111001001001) (bvsle h2_h4_a6_0 #b000000000001111010)) (and (bvsge h2_h4_a6_0 #b000000000111011011) (bvsle h2_h4_a6_0 #b000000001000000100)) (= h2_h4_a6_0 #b000000001011010100)))
(assert (or (= h2_h4_a6_1 #b111111110001110101) (and (bvsge h2_h4_a6_1 #b111111111001001001) (bvsle h2_h4_a6_1 #b000000000001111010)) (and (bvsge h2_h4_a6_1 #b000000000111011011) (bvsle h2_h4_a6_1 #b000000001000000100)) (= h2_h4_a6_1 #b000000001011010100)))
(assert (or (= h2_h4_a6_2 #b111111110001110101) (and (bvsge h2_h4_a6_2 #b111111111001001001) (bvsle h2_h4_a6_2 #b000000000001111010)) (and (bvsge h2_h4_a6_2 #b000000000111011011) (bvsle h2_h4_a6_2 #b000000001000000100)) (= h2_h4_a6_2 #b000000001011010100)))
(assert (or (= h2_h4_a6_3 #b111111110001110101) (and (bvsge h2_h4_a6_3 #b111111111001001001) (bvsle h2_h4_a6_3 #b000000000001111010)) (and (bvsge h2_h4_a6_3 #b000000000111011011) (bvsle h2_h4_a6_3 #b000000001000000100)) (= h2_h4_a6_3 #b000000001011010100)))
(assert (or (= h2_h4_a6_4 #b111111110001110101) (and (bvsge h2_h4_a6_4 #b111111111001001001) (bvsle h2_h4_a6_4 #b000000000001111010)) (and (bvsge h2_h4_a6_4 #b000000000111011011) (bvsle h2_h4_a6_4 #b000000001000000100)) (= h2_h4_a6_4 #b000000001011010100)))
(assert (or (= h2_h4_i8 #b111111110001011000) (= h2_h4_i8 #b111111111011000100) (= h2_h4_i8 #b000000000000010001) (= h2_h4_i8 #b000000000001111010) (= h2_h4_i8 #b000000001100010001)))
(assert (or (and (bvsge h2_h9_a11_0 #b111111111110010001) (bvsle h2_h9_a11_0 #b111111111111111011)) (= h2_h9_a11_0 #b000000000011100001) (= h2_h9_a11_0 #b000000000110101000)))
(assert (or (and (bvsge h2_h9_a11_1 #b111111111110010001) (bvsle h2_h9_a11_1 #b111111111111111011)) (= h2_h9_a11_1 #b000000000011100001) (= h2_h9_a11_1 #b000000000110101000)))
(assert (or (and (bvsge h2_h9_a11_2 #b111111111110010001) (bvsle h2_h9_a11_2 #b111111111111111011)) (= h2_h9_a11_2 #b000000000011100001) (= h2_h9_a11_2 #b000000000110101000)))
(assert (or (and (bvsge h2_h9_a11_3 #b111111111110010001) (bvsle h2_h9_a11_3 #b111111111111111011)) (= h2_h9_a11_3 #b000000000011100001) (= h2_h9_a11_3 #b000000000110101000)))
(assert (or (and (bvsge h2_h9_a11_4 #b111111111110010001) (bvsle h2_h9_a11_4 #b111111111111111011)) (= h2_h9_a11_4 #b000000000011100001) (= h2_h9_a11_4 #b000000000110101000)))
(assert (or (= h2_h9_i10 #b111111110010101001) (= h2_h9_i10 #b111111111001111110) (= h2_h9_i10 #b000000000110000000) (= h2_h9_i10 #b000000001000101011)))
(assert (and (bvsge h2_h9_i13 #b111111111010011001) (bvsle h2_h9_i13 #b111111111010011100)))
(assert (and (bvsge h2_i3 #b111111110011001011) (bvsle h2_i3 #b111111111011110000)))
(assert (and (bvsge i1 #b111111111110000000) (bvsle i1 #b000000000000110011)))

; Formula constraint
(assert (and (and (or (bvsgt #b000000000001000110 (bvsub h2_h4_i8 h2_h9_a11_3)) (= (bvadd #b000000000000001101 (bvmul #b000000000001010010 h2_h9_a11_3)) #b111111111111101101)) (and (bvsge #b000000000001001001 i1) (bvsgt (bvsub h2_i3 #b111111111110100000) h2_h4_a6_4))) (not (or (bvsle (bvmul #b000000000001010111 h2_h4_a6_3) (bvmul #b000000000001000111 h2_h4_a6_2)) (bvslt (bvmul #b000000000000100000 h2_h4_a6_0) (bvmul #b000000000000010011 h2_h4_a6_0))))))

(check-sat)