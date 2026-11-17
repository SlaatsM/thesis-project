(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-96, 81851] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a2_0 (_ BitVec 18))
(declare-const a2_1 (_ BitVec 18))
(declare-const a2_2 (_ BitVec 18))
(declare-const a2_3 (_ BitVec 18))
(declare-const h4_a5_0 (_ BitVec 18))
(declare-const h4_a5_1 (_ BitVec 18))
(declare-const h4_a5_2 (_ BitVec 18))
(declare-const h4_a5_3 (_ BitVec 18))
(declare-const h4_a5_4 (_ BitVec 18))
(declare-const h4_i7 (_ BitVec 18))
(declare-const h4_i8 (_ BitVec 18))
(declare-const h9_i10 (_ BitVec 18))
(declare-const h9_i11 (_ BitVec 18))
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= a2_0 #b000000000001111000) (= a2_0 #b000000001010010001) (= a2_0 #b000000001100111110) (= a2_0 #b000000001110111010)))
(assert (or (= a2_1 #b000000000001111000) (= a2_1 #b000000001010010001) (= a2_1 #b000000001100111110) (= a2_1 #b000000001110111010)))
(assert (or (= a2_2 #b000000000001111000) (= a2_2 #b000000001010010001) (= a2_2 #b000000001100111110) (= a2_2 #b000000001110111010)))
(assert (or (= a2_3 #b000000000001111000) (= a2_3 #b000000001010010001) (= a2_3 #b000000001100111110) (= a2_3 #b000000001110111010)))
(assert (and (bvsge h4_a5_0 #b000000000000111000) (bvsle h4_a5_0 #b000000001111011001)))
(assert (and (bvsge h4_a5_1 #b000000000000111000) (bvsle h4_a5_1 #b000000001111011001)))
(assert (and (bvsge h4_a5_2 #b000000000000111000) (bvsle h4_a5_2 #b000000001111011001)))
(assert (and (bvsge h4_a5_3 #b000000000000111000) (bvsle h4_a5_3 #b000000001111011001)))
(assert (and (bvsge h4_a5_4 #b000000000000111000) (bvsle h4_a5_4 #b000000001111011001)))
(assert (and (bvsge h4_i7 #b000000000011110000) (bvsle h4_i7 #b000000001101100100)))
(assert (or (= h4_i8 #b000000000111001010) (= h4_i8 #b000000001011110110)))
(assert (and (bvsge h9_i10 #b000000001000101110) (bvsle h9_i10 #b000000001010110010)))
(assert (and (bvsge h9_i11 #b000000001011011011) (bvsle h9_i11 #b000000001110110011)))
(assert (and (bvsge i1 #b000000001101010011) (bvsle i1 #b000000001111011001)))

; Formula constraint
(assert (bvsle i1 (bvsub (bvmul #b000000000001010011 h4_a5_3) #b111111111110100000)))

(check-sat)