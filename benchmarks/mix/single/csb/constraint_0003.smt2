(set-logic QF_BV)

; Bit width chosen: 15 (covers range [-7401, 12065] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 15))

; Domain constraints
(assert (or (= i1 #b111111110000001) (= i1 #b000000000110100)))

; Formula constraint
(assert (or (and (and (bvsge #b000000000000100 (bvsub i1 i1)) (bvsle i1 (bvmul #b111111110100001 i1))) (not (bvsle i1 (bvsub #b111111110101001 i1)))) (=> (bvsle #b000000000100010 (bvmul #b111111111001111 i1)) (and (bvslt (bvsub (bvadd #b000000000010001 i1) (bvmul #b000000000110001 i1)) #b000000000010011) (not (= i1 (bvsub #b111111111011101 (bvmul #b111111111000110 i1))))))))

(check-sat)