(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-54462, 69486] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b000000000000100001) (= i1 #b000000000100001000) (= i1 #b000000001011011011) (= i1 #b000000001101011000) (= i1 #b000000001110101011)))

; Formula constraint
(assert (and (or (or (bvsle (bvsub i1 i1) #b111111111111010001) (bvsgt i1 i1)) (bvsle #b111111111110100011 (bvadd (bvsub #b000000000001011010 i1) (bvmul #b000000000000011101 i1)))) (or (or (bvsle (bvmul #b000000000001001001 i1) (bvmul #b111111111111000110 i1)) (= i1 (bvmul #b000000000001001010 i1))) (bvsle i1 #b000000000000110000))))

(check-sat)