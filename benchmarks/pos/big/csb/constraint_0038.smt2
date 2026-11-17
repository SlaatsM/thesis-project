(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-66825, 66906] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a5_0 (_ BitVec 18))
(declare-const a5_1 (_ BitVec 18))
(declare-const a5_2 (_ BitVec 18))
(declare-const a7_0 (_ BitVec 18))
(declare-const a7_1 (_ BitVec 18))
(declare-const a7_2 (_ BitVec 18))
(declare-const a7_3 (_ BitVec 18))
(declare-const a7_4 (_ BitVec 18))
(declare-const a7_5 (_ BitVec 18))
(declare-const i1 (_ BitVec 18))
(declare-const i9 (_ BitVec 18))

; Domain constraints
(assert (and (bvsge a5_0 #b000000000100011100) (bvsle a5_0 #b000000001101110001)))
(assert (and (bvsge a5_1 #b000000000100011100) (bvsle a5_1 #b000000001101110001)))
(assert (and (bvsge a5_2 #b000000000100011100) (bvsle a5_2 #b000000001101110001)))
(assert (or (and (bvsge a7_0 #b000000000001011001) (bvsle a7_0 #b000000001000011111)) (and (bvsge a7_0 #b000000001010010101) (bvsle a7_0 #b000000001100101111))))
(assert (or (and (bvsge a7_1 #b000000000001011001) (bvsle a7_1 #b000000001000011111)) (and (bvsge a7_1 #b000000001010010101) (bvsle a7_1 #b000000001100101111))))
(assert (or (and (bvsge a7_2 #b000000000001011001) (bvsle a7_2 #b000000001000011111)) (and (bvsge a7_2 #b000000001010010101) (bvsle a7_2 #b000000001100101111))))
(assert (or (and (bvsge a7_3 #b000000000001011001) (bvsle a7_3 #b000000001000011111)) (and (bvsge a7_3 #b000000001010010101) (bvsle a7_3 #b000000001100101111))))
(assert (or (and (bvsge a7_4 #b000000000001011001) (bvsle a7_4 #b000000001000011111)) (and (bvsge a7_4 #b000000001010010101) (bvsle a7_4 #b000000001100101111))))
(assert (or (and (bvsge a7_5 #b000000000001011001) (bvsle a7_5 #b000000001000011111)) (and (bvsge a7_5 #b000000001010010101) (bvsle a7_5 #b000000001100101111))))
(assert (and (bvsge i1 #b000000000101000110) (bvsle i1 #b000000001010100011)))
(assert (or (= i9 #b000000000111001011) (= i9 #b000000000111101101)))

; Formula constraint
(assert (or (=> (and (bvsle (bvsub #b000000000001010001 (bvmul #b111111111110011101 i1)) (bvsub (bvsub a7_2 (bvmul #b000000000001000111 a5_0)) a7_5)) (bvslt #b000000000000011000 a5_1)) (=> (bvsge (bvmul #b000000000001001011 a5_2) (bvadd #b000000000000111000 #b111111111111100011)) (bvsle #b111111111111100011 (bvsub a5_0 (bvmul #b000000000000011001 a7_0))))) (= (bvmul #b000000000000011110 a5_2) #b111111111110110000)))

(check-sat)