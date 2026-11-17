(set-logic QF_BV)

; Bit width chosen: 15 (covers range [-13958, 997] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 15))

; Domain constraints
(assert (or (= i1 #b000000000000101) (and (bvsge i1 #b000001010001001) (bvsle i1 #b000001111100101))))

; Formula constraint
(assert (bvsgt (bvmul #b111111111110010 i1) #b111111110100001))

(check-sat)