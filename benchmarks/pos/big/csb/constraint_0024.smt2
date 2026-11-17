(set-logic QF_BV)

; Bit width chosen: 15 (covers range [-24, 10927] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 15))
(declare-const a1_1 (_ BitVec 15))
(declare-const a4_0 (_ BitVec 15))
(declare-const a4_1 (_ BitVec 15))
(declare-const a4_2 (_ BitVec 15))
(declare-const i3 (_ BitVec 15))

; Domain constraints
(assert (and (bvsge a1_0 #b000000000100010) (bvsle a1_0 #b000001000001001)))
(assert (and (bvsge a1_1 #b000000000100010) (bvsle a1_1 #b000001000001001)))
(assert (or (= a4_0 #b000000100101001) (= a4_0 #b000001110001111)))
(assert (or (= a4_1 #b000000100101001) (= a4_1 #b000001110001111)))
(assert (or (= a4_2 #b000000100101001) (= a4_2 #b000001110001111)))
(assert (and (bvsge i3 #b000000111001111) (bvsle i3 #b000000111100001)))

; Formula constraint
(assert (and (and (=> (bvslt a4_1 #b111111111101000) (bvsgt (bvadd (bvsub (bvmul #b000000000010101 i3) #b000000001001100) (bvadd #b111111111110111 a4_2)) i3)) (bvsge a4_2 a4_2)) (bvsgt i3 #b000000000110000)))

(check-sat)