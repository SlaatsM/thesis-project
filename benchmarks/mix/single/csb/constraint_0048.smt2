(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-42582, 4888] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 17))
(declare-const i3 (_ BitVec 17))

; Domain constraints
(assert (or (= a1_0 #b11111111000111011) (= a1_0 #b00000000000101111) (= a1_0 #b00000000000110100)))
(assert (or (= i3 #b11111110100110000) (= i3 #b00000000101100011)))

; Formula constraint
(assert (and (bvsgt a1_0 (bvmul #b00000000001011110 a1_0)) (and (or (bvsgt (bvmul #b00000000000001011 i3) #b11111111110011100) (bvslt (bvmul #b00000000000110001 a1_0) i3)) (=> (bvsle i3 #b11111111111000101) (bvsgt i3 i3)))))

(check-sat)