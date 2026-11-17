(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-79794, 42900] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 18))
(declare-const a1_1 (_ BitVec 18))

; Domain constraints
(assert (or (= a1_0 #b000000000000100101) (and (bvsge a1_0 #b000000000001110101) (bvsle a1_0 #b000000000110110011)) (= a1_0 #b000000001101011010)))
(assert (or (= a1_1 #b000000000000100101) (and (bvsge a1_1 #b000000000001110101) (bvsle a1_1 #b000000000110110011)) (= a1_1 #b000000001101011010)))

; Formula constraint
(assert (and (not (bvsgt a1_0 (bvsub a1_1 (bvadd #b111111111111110110 #b111111111111011110)))) (or (=> (bvslt #b000000000000110011 a1_1) (bvslt a1_0 (bvsub (bvmul #b111111111111010101 a1_1) (bvmul #b000000000000110010 a1_1)))) (bvsle (bvadd (bvadd #b000000000000111000 #b111111111111101111) #b000000000000001011) (bvsub (bvmul #b111111111111100000 a1_1) #b111111111111000110)))))

(check-sat)