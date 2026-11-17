(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-79885, 79794] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0_i3 (_ BitVec 18))
(declare-const a1_1_i3 (_ BitVec 18))

; Domain constraints
(assert (or (= a1_0_i3 #b000000000001000110) (= a1_0_i3 #b000000000011101111) (= a1_0_i3 #b000000000101110111) (= a1_0_i3 #b000000001100110110) (= a1_0_i3 #b000000001101011010)))
(assert (or (= a1_1_i3 #b000000000001000110) (= a1_1_i3 #b000000000011101111) (= a1_1_i3 #b000000000101110111) (= a1_1_i3 #b000000001100110110) (= a1_1_i3 #b000000001101011010)))

; Formula constraint
(assert (=> (bvsge #b000000000000111110 a1_1_i3) (and (and (bvsle (bvsub #b111111111110100101 (bvmul #b000000000001011101 a1_0_i3)) (bvsub (bvadd a1_1_i3 (bvmul #b000000000001011011 a1_0_i3)) a1_1_i3)) (bvsge (bvsub a1_1_i3 a1_0_i3) #b000000000000101000)) (and (bvslt a1_1_i3 (bvsub a1_0_i3 (bvmul #b000000000001010100 a1_0_i3))) (bvsle a1_1_i3 (bvadd #b000000000000001011 #b000000000000101100))))))

(check-sat)