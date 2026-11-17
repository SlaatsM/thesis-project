(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-94545, 53280] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a2_0 (_ BitVec 18))
(declare-const a2_1 (_ BitVec 18))
(declare-const a2_2 (_ BitVec 18))
(declare-const a2_3 (_ BitVec 18))
(declare-const h6_i7 (_ BitVec 18))
(declare-const i1 (_ BitVec 18))
(declare-const i4 (_ BitVec 18))
(declare-const i5 (_ BitVec 18))

; Domain constraints
(assert (and (bvsge a2_0 #b111111110100011100) (bvsle a2_0 #b000000001011001011)))
(assert (and (bvsge a2_1 #b111111110100011100) (bvsle a2_1 #b000000001011001011)))
(assert (and (bvsge a2_2 #b111111110100011100) (bvsle a2_2 #b000000001011001011)))
(assert (and (bvsge a2_3 #b111111110100011100) (bvsle a2_3 #b000000001011001011)))
(assert (and (bvsge h6_i7 #b111111111000100011) (bvsle h6_i7 #b000000000001101101)))
(assert (and (bvsge i1 #b111111111001101010) (bvsle i1 #b000000000011011011)))
(assert (or (= i4 #b111111110101101010) (= i4 #b111111110111111000) (= i4 #b000000000100110001)))
(assert (and (bvsge i5 #b111111111110101000) (bvsle i5 #b000000001110111011)))

; Formula constraint
(assert (or (=> (not (bvslt (bvmul #b111111111110011101 i5) i1)) (= (bvsub (bvmul #b111111111110111001 a2_2) a2_2) (bvsub #b000000000000000101 #b111111111110101000))) (or (and (= a2_2 #b111111111111011101) (bvsle (bvmul #b111111111111110110 a2_2) #b000000000000101110)) (or (bvsge (bvmul #b111111111111010111 i5) (bvmul #b000000000000000111 a2_2)) (bvsgt (bvmul #b111111111110111101 i4) i4)))))

(check-sat)