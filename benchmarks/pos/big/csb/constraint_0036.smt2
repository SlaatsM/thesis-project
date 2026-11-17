(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-18900, 90000] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 18))
(declare-const a1_1 (_ BitVec 18))
(declare-const a1_2 (_ BitVec 18))
(declare-const a1_3 (_ BitVec 18))
(declare-const a1_4 (_ BitVec 18))

; Domain constraints
(assert (and (bvsge a1_0 #b000000001011100000) (bvsle a1_0 #b000000001110000100)))
(assert (and (bvsge a1_1 #b000000001011100000) (bvsle a1_1 #b000000001110000100)))
(assert (and (bvsge a1_2 #b000000001011100000) (bvsle a1_2 #b000000001110000100)))
(assert (and (bvsge a1_3 #b000000001011100000) (bvsle a1_3 #b000000001110000100)))
(assert (and (bvsge a1_4 #b000000001011100000) (bvsle a1_4 #b000000001110000100)))

; Formula constraint
(assert (or (=> (and (bvsge (bvsub (bvmul #b000000000001100000 a1_1) #b000000000000010100) #b000000000000101101) (bvsle #b111111111110111001 (bvmul #b111111111111101011 a1_1))) (and (bvsge #b000000000000010011 (bvadd #b111111111111000100 a1_3)) (bvsge a1_0 #b111111111111001110))) (not (not (= a1_1 (bvmul #b000000000001100100 a1_4))))))

(check-sat)