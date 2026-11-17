(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-84060, 107048] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 18))
(declare-const i3 (_ BitVec 18))

; Domain constraints
(assert (and (bvsge a1_0 #b111111111001010001) (bvsle a1_0 #b000000001110010111)))
(assert (and (bvsge i3 #b111111111111100100) (bvsle i3 #b000000001100011101)))

; Formula constraint
(assert (or (and (=> (bvsgt (bvsub a1_0 (bvmul #b000000000001011011 a1_0)) (bvsub #b000000000000000100 (bvsub a1_0 i3))) (bvslt #b000000000000011011 a1_0)) (and (bvslt a1_0 #b111111111111100101) (bvslt #b111111111111010011 i3))) (=> (=> (bvsge a1_0 (bvmul #b000000000000010010 a1_0)) (not (= #b000000000000011111 #b000000000001001101))) (and (= i3 (bvadd (bvmul #b000000000001100001 i3) (bvmul #b111111111110111011 a1_0))) (bvsge #b111111111111110101 a1_0)))))

(check-sat)