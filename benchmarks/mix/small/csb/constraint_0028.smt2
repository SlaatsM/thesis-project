(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-62818, 85176] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 18))

; Domain constraints
(assert (or (= a1_0 #b111111110111010111) (= a1_0 #b000000000110011000)))

; Formula constraint
(assert (not (and (and (bvsle a1_0 (bvsub a1_0 (bvadd a1_0 (bvmul #b111111111111111100 a1_0)))) (bvslt a1_0 a1_0)) (=> (bvsgt (bvsub (bvmul #b111111111110111011 a1_0) (bvsub (bvmul #b000000000001010101 a1_0) #b000000000000001110)) (bvadd (bvmul #b000000000001011001 a1_0) #b111111111111011010)) (= (bvadd a1_0 (bvsub #b000000000000111000 #b111111111110110110)) #b111111111111110000)))))

(check-sat)