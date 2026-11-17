(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-71292, 53012] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b111111110001101110) (= i1 #b111111111110100101) (= i1 #b000000000011000100)))

; Formula constraint
(assert (=> (and (and (bvslt #b111111111110111001 (bvmul #b111111111111000110 i1)) (bvsgt #b000000000001010110 i1)) (bvsle #b000000000000110110 i1)) (=> (or (not (= (bvmul #b000000000001000101 i1) #b111111111111010101)) (bvslt (bvmul #b000000000000001100 i1) (bvmul #b000000000000110001 i1))) (not (= i1 (bvmul #b000000000001001110 i1))))))

(check-sat)