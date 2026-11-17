(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-65184, 53256] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 17))
(declare-const i3 (_ BitVec 17))

; Domain constraints
(assert (and (bvsge a1_0 #b11111111011000010) (bvsle a1_0 #b11111111111001011)))
(assert (and (bvsge i3 #b11111110110000110) (bvsle i3 #b00000001100001000)))

; Formula constraint
(assert (and (and (and (bvsge #b11111111110101011 a1_0) (bvsle (bvmul #b00000000000100101 i3) (bvmul #b00000000000011010 i3))) (bvsgt (bvsub #b11111111111100011 #b11111111110110100) #b11111111110110111)) (not (not (= (bvmul #b11111111110101100 i3) (bvmul #b11111111111100010 a1_0))))))

(check-sat)