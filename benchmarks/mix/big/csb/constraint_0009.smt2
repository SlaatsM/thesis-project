(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-837, 18894] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h2_a3_0 (_ BitVec 16))
(declare-const h2_a3_1 (_ BitVec 16))
(declare-const h2_a3_2 (_ BitVec 16))
(declare-const h2_a3_3 (_ BitVec 16))
(declare-const h2_a3_4 (_ BitVec 16))
(declare-const i1 (_ BitVec 16))

; Domain constraints
(assert (and (bvsge h2_a3_0 #b0000000000111111) (bvsle h2_a3_0 #b0000000110010010)))
(assert (and (bvsge h2_a3_1 #b0000000000111111) (bvsle h2_a3_1 #b0000000110010010)))
(assert (and (bvsge h2_a3_2 #b0000000000111111) (bvsle h2_a3_2 #b0000000110010010)))
(assert (and (bvsge h2_a3_3 #b0000000000111111) (bvsle h2_a3_3 #b0000000110010010)))
(assert (and (bvsge h2_a3_4 #b0000000000111111) (bvsle h2_a3_4 #b0000000110010010)))
(assert (and (bvsge i1 #b1111110010111011) (bvsle i1 #b0000000000110100)))

; Formula constraint
(assert (not (and (=> (bvsgt h2_a3_0 (bvadd (bvmul #b0000000000101110 h2_a3_3) h2_a3_1)) (bvslt #b1111111110111110 (bvadd #b0000000000111001 #b1111111111110111))) (bvsgt h2_a3_0 h2_a3_0))))

(check-sat)