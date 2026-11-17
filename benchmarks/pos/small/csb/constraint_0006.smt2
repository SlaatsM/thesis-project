(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-33553, 24882] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 17))

; Domain constraints
(assert (or (= a1_0 #b00000000000110110) (= a1_0 #b00000000101111001)))

; Formula constraint
(assert (=> (and (or (not (= (bvmul #b11111111110100111 a1_0) #b00000000001100001)) (bvsge a1_0 (bvmul #b11111111111110000 a1_0))) (and (bvsle #b11111111110100010 (bvmul #b11111111110110011 a1_0)) (bvsgt #b11111111111101011 (bvadd a1_0 (bvmul #b00000000001000001 a1_0))))) (not (and (bvslt #b00000000000011010 #b00000000001001001) (bvsle #b11111111111001101 (bvsub a1_0 (bvsub a1_0 a1_0)))))))

(check-sat)