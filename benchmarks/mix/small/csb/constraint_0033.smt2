(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-94240, 992] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b000000000001010011) (= i1 #b000000001011100100) (= i1 #b000000001111100000)))

; Formula constraint
(assert (or (=> (=> (bvsgt (bvmul #b111111111111010111 i1) #b111111111111101110) (bvslt #b000000000001010001 (bvmul #b111111111111011101 i1))) (not (bvslt #b000000000000101110 #b111111111110110101))) (not (and (bvsgt i1 #b111111111110110010) (bvslt (bvmul #b111111111110100001 i1) #b000000000001010110)))))

(check-sat)