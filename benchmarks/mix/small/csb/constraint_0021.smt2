(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-72312, 51520] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b111111110011101110) (= i1 #b111111111011101101) (= i1 #b000000000011111110) (= i1 #b000000000110111000) (= i1 #b000000001000110000)))

; Formula constraint
(assert (bvsle i1 (bvmul #b000000000001011100 i1)))

(check-sat)